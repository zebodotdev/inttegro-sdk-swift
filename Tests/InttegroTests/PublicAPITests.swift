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
