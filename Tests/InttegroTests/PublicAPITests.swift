import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import XCTest
@testable import Inttegro

final class PublicAPITests: XCTestCase {
    func testCustomDataControlsMutationAndPatchRemoval() throws {
        var data = try CustomData(["campaign": "launch"])
        try data.set("vip", for: "segment")
        var patch = CustomDataPatch()
        try patch.unset("legacy")

        XCTAssertEqual(data["segment"], "vip")
        XCTAssertEqual(patch["legacy"], .null)
        XCTAssertThrowsError(try data.set("value", for: String(repeating: "x", count: 257)))
    }

    func testClientExposesTypedResources() throws {
        let client = try Client(apiKey: "sk_test_example")
        _ = client.orders
        _ = client.financialAccounts
        let amount = AmountParams(currency: .ghs, value: 5_000)
        XCTAssertEqual(amount.value, 5_000)
    }

    func testBalanceSnapshotExposesGHSStatically() throws {
        let data = Data(#"{"ghs":{"available":{"amount":1000},"includes_transactions_before":"2026-09-09T12:00:00Z","pending":{"amount":200},"refund":{"amount":50},"reserved":{"amount":100}}}"#.utf8)
        let balance = try JSONDecoder.inttegro.decode(BalanceSnapshot.self, from: data)

        XCTAssertEqual(balance.ghs.available.amount, 1_000)
        XCTAssertEqual(
            balance.ghs.includesTransactionsBefore,
            ISO8601DateFormatter().date(from: "2026-09-09T12:00:00Z")
        )
        let encoded = try JSONSerialization.jsonObject(with: JSONEncoder.inttegro.encode(balance)) as! [String: Any]
        XCTAssertEqual(
            (encoded["ghs"] as! [String: Any])["includes_transactions_before"] as? String,
            "2026-09-09T12:00:00.000Z"
        )
    }

    func testPurchaseIntentExposesNestedResponseTypes() throws {
        let data = Data(#"{"activity":{"recent":[{"created_at":"2026-09-09T12:01:00Z","id":"saleevt_123","purchase_intent_id":"sale_123","type":"viewed","visitor":{"ip_address":"203.0.113.7"}}]},"allow_variants":false,"created_at":"2026-09-09T12:00:00Z","id":"sale_123","merchant":{"organization_name":"Tea House Ltd"},"product":{"active":true,"created_at":"2026-09-09T11:00:00Z","dimensions":{"digital":{"bytes":1024}},"id":"prod_123","name":"Tea guide","type":"digital"},"quantity":{"min":1},"status":"active","usage":{"order":{"created_at":"2026-09-09T12:02:00Z","id":"or_123"},"single_use":true}}"#.utf8)
        let intent = try JSONDecoder.inttegro.decode(PurchaseIntent.self, from: data)

        XCTAssertEqual(intent.activity?.recent?.first?.visitor?.ipAddress, "203.0.113.7")
        XCTAssertEqual(intent.merchant?.organizationName, "Tea House Ltd")
        XCTAssertEqual(intent.product?.dimensions?.digital?.bytes, 1_024)
        XCTAssertEqual(intent.usage.order?.id, "or_123")
    }

    func testWireEnvelopeIsUnwrappedIntoDomainValue() async throws {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [MockURLProtocol.self]
        let session = URLSession(configuration: configuration)
        let client = try Client(apiKey: "sk_test_example", session: session)
        let app = try await client.apps.lookup()
        XCTAssertEqual(app.id, "app_test")
    }
}

private final class MockURLProtocol: URLProtocol, @unchecked Sendable {
    override class func canInit(with request: URLRequest) -> Bool { true }
    override class func canonicalRequest(for request: URLRequest) -> URLRequest { request }
    override func startLoading() {
        let body = Data(#"{"app":{"id":"app_test","name":"Test","created_at":"2026-09-07T00:00:00Z"}}"#.utf8)
        let response = HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: nil, headerFields: ["Content-Type": "application/json"])!
        client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
        client?.urlProtocol(self, didLoad: body)
        client?.urlProtocolDidFinishLoading(self)
    }
    override func stopLoading() {}
}
