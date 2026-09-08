import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public let inttegroSDKVersion = "0.1.1"

public struct RequestOptions: Sendable {
    public var idempotencyKey: String?
    public var headers: [String: String]
    public init(idempotencyKey: String? = nil, headers: [String: String] = [:]) {
        self.idempotencyKey = idempotencyKey
        self.headers = headers
    }
}

public struct FileDownload: Sendable {
    public let data: Data
    public let contentType: String?
    public let filename: String?
}

public struct CreateFileRequest: Sendable {
    public let fileName: String
    public let data: Data
    public let purpose: String
    public let title: String?
    public let customData: CustomData?
    public init(fileName: String, data: Data, purpose: String, title: String? = nil, customData: CustomData? = nil) {
        self.fileName = fileName; self.data = data; self.purpose = purpose; self.title = title; self.customData = customData
    }
}

public struct FulfillUploadRequest: Sendable {
    public let id: String
    public let token: String
    public let fileName: String
    public let data: Data
    public init(id: String, token: String, fileName: String, data: Data) { self.id = id; self.token = token; self.fileName = fileName; self.data = data }
}

public struct OpenFileLinkRequest: Sendable {
    public let id: String
    public let token: String
    public init(id: String, token: String) { self.id = id; self.token = token }
}

public enum ErrorReportingPolicy: Sendable { case unexpected, all }

public struct SDKReportContext: Codable, Sendable, Equatable {
    public let language: String
    public let version: String
}

public struct HTTPReportContext: Codable, Sendable, Equatable {
    public let method: String
    public let route: String?
    public let serverAddress: String
    public let statusCode: Int?
    public let requestId: String?
    public let durationMs: Int
}

public struct APIErrorReportContext: Codable, Sendable, Equatable {
    public let type: String?
    public let code: String?
    public let fixCode: String?
}

public struct TraceReportContext: Codable, Sendable, Equatable {
    public let traceId: String
    public let spanId: String
}

public struct ErrorReport: Codable, Sendable, Equatable {
    public let schemaVersion: Int
    public let eventId: String
    public let occurredAt: String
    public let severity: String
    public let category: String
    public let operation: String
    public let sdk: SDKReportContext
    public let http: HTTPReportContext
    public let apiError: APIErrorReportContext?
    public let trace: TraceReportContext?
    public let exceptionType: String
    public let fingerprint: String
}

public protocol ErrorReporter: Sendable { func report(_ report: ErrorReport) async }

public struct TelemetryEvent: Sendable {
    public let name: String
    public let operation: String
    public let method: String
    public let route: String
    public let statusCode: Int?
    public let durationMilliseconds: Int
}

public protocol Telemetry: Sendable { func record(_ event: TelemetryEvent) }

public enum InttegroError: Swift.Error, Sendable {
    case api(status: Int, code: String, type: String?, fixCode: String?, requestID: String?, report: ErrorReport?)
    case transport(String)
    case decoding(String)
    case configuration(String)
}

struct EmptyBody: Encodable {}

public final class Client: @unchecked Sendable {
    private let apiKey: String
    private let baseURL: URL
    private let session: URLSession
    private let telemetry: (any Telemetry)?
    private let errorReporter: (any ErrorReporter)?
    private let errorReportingPolicy: ErrorReportingPolicy

    public init(
        apiKey: String,
        baseURL: URL = URL(string: "https://api.inttegro.com")!,
        session: URLSession = .shared,
        telemetry: (any Telemetry)? = nil,
        errorReporter: (any ErrorReporter)? = nil,
        errorReportingPolicy: ErrorReportingPolicy = .unexpected
    ) throws {
        guard !apiKey.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else { throw InttegroError.configuration("api key cannot be empty") }
        self.apiKey = apiKey
        self.baseURL = baseURL
        self.session = session
        self.telemetry = telemetry
        self.errorReporter = errorReporter
        self.errorReportingPolicy = errorReportingPolicy
    }

    public var apps: Apps { .init(client: self) }
    public var balanceTransactions: BalanceTransactions { .init(client: self) }
    public var balances: Balances { .init(client: self) }
    public var broadcasts: Broadcasts { .init(client: self) }
    public var chimes: Chimes { .init(client: self) }
    public var customers: Customers { .init(client: self) }
    public var fileLinks: FileLinks { .init(client: self) }
    public var fileReferences: FileReferences { .init(client: self) }
    public var files: Files { .init(client: self) }
    public var financialAccounts: FinancialAccounts { .init(client: self) }
    public var keys: Keys { .init(client: self) }
    public var messageTemplates: MessageTemplates { .init(client: self) }
    public var orders: Orders { .init(client: self) }
    public var otp: Otp { .init(client: self) }
    public var paymentMethods: PaymentMethods { .init(client: self) }
    public var payouts: Payouts { .init(client: self) }
    public var prices: Prices { .init(client: self) }
    public var products: Products { .init(client: self) }
    public var purchaseIntents: PurchaseIntents { .init(client: self) }
    public var refunds: Refunds { .init(client: self) }
    public var schedules: Schedules { .init(client: self) }
    public var specifications: Specifications { .init(client: self) }
    public var uploadRequests: UploadRequests { .init(client: self) }

    func request<Body: Encodable, Output: Decodable>(method: String, path: String, body: Body, options: RequestOptions, operation: String, field: String?, authenticated: Bool) async throws -> Output {
        let started = Date()
        var request = URLRequest(url: baseURL.appendingPathComponent(path.trimmingCharacters(in: CharacterSet(charactersIn: "/"))))
        request.httpMethod = method
        request.setValue("inttegro-swift/\(inttegroSDKVersion)", forHTTPHeaderField: "User-Agent")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        if authenticated { request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization") }
        if let key = options.idempotencyKey { request.setValue(key, forHTTPHeaderField: "Idempotency-Key") }
        for (name, value) in options.headers { request.setValue(value, forHTTPHeaderField: name) }
        request.httpBody = try JSONEncoder.inttegro.encode(body)
        record(name: "inttegro.request.prepared", operation: operation, method: method, route: path, status: nil, started: started)
        let (data, response): (Data, URLResponse)
        do { (data, response) = try await session.data(for: request) }
        catch {
            _ = await finishFailure(operation: operation, method: method, route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport(String(describing: error))
        }
        guard let http = response as? HTTPURLResponse else {
            _ = await finishFailure(operation: operation, method: method, route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport("response was not HTTP")
        }
        record(name: "inttegro.response.received", operation: operation, method: method, route: path, status: http.statusCode, started: started)
        let requestID = http.value(forHTTPHeaderField: "x-request-id")
        guard (200..<300).contains(http.statusCode) else {
            let root = (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
            let detail = (root?["error"] as? [String: Any]) ?? root
            let code = detail?["code"] as? String ?? "api_error"
            let type = detail?["type"] as? String
            let fixCode = detail?["fix_code"] as? String
            let report = await finishFailure(operation: operation, method: method, route: path, started: started, status: http.statusCode, requestID: requestID, code: code, category: type ?? "api", fixCode: fixCode)
            throw InttegroError.api(status: http.statusCode, code: code, type: type, fixCode: fixCode, requestID: requestID, report: report)
        }
        do {
            let selected: Data
            if let field {
                guard let root = try JSONSerialization.jsonObject(with: data) as? [String: Any], let value = root[field] else { throw InttegroError.decoding("missing \(field) in Inttegro response") }
                selected = try JSONSerialization.data(withJSONObject: value)
            } else { selected = data }
            let output = try JSONDecoder.inttegro.decode(Output.self, from: selected)
            record(name: "inttegro.response.decoded", operation: operation, method: method, route: path, status: http.statusCode, started: started)
            return output
        } catch let error as InttegroError {
            _ = await finishFailure(operation: operation, method: method, route: path, started: started, status: http.statusCode, requestID: requestID, code: nil, category: "decoding", fixCode: nil)
            throw error
        } catch {
            _ = await finishFailure(operation: operation, method: method, route: path, started: started, status: http.statusCode, requestID: requestID, code: nil, category: "decoding", fixCode: nil)
            throw InttegroError.decoding(String(describing: error))
        }
    }

    func download<Body: Encodable>(method: String, path: String, body: Body, options: RequestOptions, operation: String, authenticated: Bool) async throws -> FileDownload {
        let started = Date()
        var request = URLRequest(url: baseURL.appendingPathComponent(path.trimmingCharacters(in: CharacterSet(charactersIn: "/"))))
        request.httpMethod = method
        request.httpBody = try JSONEncoder.inttegro.encode(body)
        request.setValue("inttegro-swift/\(inttegroSDKVersion)", forHTTPHeaderField: "User-Agent")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        if authenticated { request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization") }
        if let key = options.idempotencyKey { request.setValue(key, forHTTPHeaderField: "Idempotency-Key") }
        for (name, value) in options.headers { request.setValue(value, forHTTPHeaderField: name) }
        record(name: "inttegro.request.prepared", operation: operation, method: method, route: path, status: nil, started: started)
        let (data, response): (Data, URLResponse)
        do { (data, response) = try await session.data(for: request) }
        catch {
            _ = await finishFailure(operation: operation, method: method, route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport(String(describing: error))
        }
        guard let http = response as? HTTPURLResponse else {
            _ = await finishFailure(operation: operation, method: method, route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport("response was not HTTP")
        }
        record(name: "inttegro.response.received", operation: operation, method: method, route: path, status: http.statusCode, started: started)
        let requestID = http.value(forHTTPHeaderField: "x-request-id")
        guard (200..<300).contains(http.statusCode) else {
            let report = await finishFailure(operation: operation, method: method, route: path, started: started, status: http.statusCode, requestID: requestID, code: "download_failed", category: "api", fixCode: nil)
            throw InttegroError.api(status: http.statusCode, code: "download_failed", type: nil, fixCode: nil, requestID: requestID, report: report)
        }
        return FileDownload(data: data, contentType: http.value(forHTTPHeaderField: "Content-Type"), filename: nil)
    }

    func uploadFile(path: String, request: CreateFileRequest, options: RequestOptions, operation: String, field: String) async throws -> File {
        let body = multipart(fileName: request.fileName, data: request.data, fields: ["purpose": request.purpose, "title": request.title, "custom_data": request.customData.flatMap { try? String(data: JSONEncoder().encode($0), encoding: .utf8) }])
        return try await upload(path: path, body: body, query: [], options: options, operation: operation, field: field, authenticated: true)
    }

    func fulfillUpload(path: String, request: FulfillUploadRequest, options: RequestOptions, operation: String) async throws -> UploadFulfillment {
        let body = multipart(fileName: request.fileName, data: request.data, fields: [:])
        return try await upload(path: path, body: body, query: [URLQueryItem(name: "id", value: request.id), URLQueryItem(name: "token", value: request.token)], options: options, operation: operation, field: nil, authenticated: false)
    }

    func openFileLink(path: String, request: OpenFileLinkRequest, operation: String) async throws -> FileDownload {
        var components = URLComponents(url: baseURL.appendingPathComponent(path.trimmingCharacters(in: CharacterSet(charactersIn: "/"))), resolvingAgainstBaseURL: false)!
        components.queryItems = [URLQueryItem(name: "id", value: request.id), URLQueryItem(name: "token", value: request.token)]
        let started = Date()
        record(name: "inttegro.request.prepared", operation: operation, method: "GET", route: path, status: nil, started: started)
        var urlRequest = URLRequest(url: components.url!)
        urlRequest.setValue("inttegro-swift/\(inttegroSDKVersion)", forHTTPHeaderField: "User-Agent")
        let (data, response): (Data, URLResponse)
        do { (data, response) = try await session.data(for: urlRequest) }
        catch {
            _ = await finishFailure(operation: operation, method: "GET", route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport(String(describing: error))
        }
        guard let http = response as? HTTPURLResponse else {
            _ = await finishFailure(operation: operation, method: "GET", route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport("response was not HTTP")
        }
        record(name: "inttegro.response.received", operation: operation, method: "GET", route: path, status: http.statusCode, started: started)
        let requestID = http.value(forHTTPHeaderField: "x-request-id")
        guard (200..<300).contains(http.statusCode) else {
            let report = await finishFailure(operation: operation, method: "GET", route: path, started: started, status: http.statusCode, requestID: requestID, code: "file_link_failed", category: "api", fixCode: nil)
            throw InttegroError.api(status: http.statusCode, code: "file_link_failed", type: nil, fixCode: nil, requestID: requestID, report: report)
        }
        return FileDownload(data: data, contentType: http.value(forHTTPHeaderField: "Content-Type"), filename: nil)
    }

    private func upload<Output: Decodable>(path: String, body: (data: Data, contentType: String), query: [URLQueryItem], options: RequestOptions, operation: String, field: String?, authenticated: Bool) async throws -> Output {
        let started = Date()
        var components = URLComponents(url: baseURL.appendingPathComponent(path.trimmingCharacters(in: CharacterSet(charactersIn: "/"))), resolvingAgainstBaseURL: false)!
        components.queryItems = query.isEmpty ? nil : query
        var request = URLRequest(url: components.url!)
        request.httpMethod = "POST"; request.httpBody = body.data; request.setValue(body.contentType, forHTTPHeaderField: "Content-Type")
        request.setValue("inttegro-swift/\(inttegroSDKVersion)", forHTTPHeaderField: "User-Agent")
        if authenticated { request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization") }
        if let key = options.idempotencyKey { request.setValue(key, forHTTPHeaderField: "Idempotency-Key") }
        for (name, value) in options.headers { request.setValue(value, forHTTPHeaderField: name) }
        record(name: "inttegro.request.prepared", operation: operation, method: "POST", route: path, status: nil, started: started)
        let (data, response): (Data, URLResponse)
        do { (data, response) = try await session.data(for: request) }
        catch {
            _ = await finishFailure(operation: operation, method: "POST", route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport(String(describing: error))
        }
        guard let http = response as? HTTPURLResponse else {
            _ = await finishFailure(operation: operation, method: "POST", route: path, started: started, status: nil, requestID: nil, code: nil, category: "transport", fixCode: nil)
            throw InttegroError.transport("response was not HTTP")
        }
        record(name: "inttegro.response.received", operation: operation, method: "POST", route: path, status: http.statusCode, started: started)
        let requestID = http.value(forHTTPHeaderField: "x-request-id")
        guard (200..<300).contains(http.statusCode) else {
            let report = await finishFailure(operation: operation, method: "POST", route: path, started: started, status: http.statusCode, requestID: requestID, code: "upload_failed", category: "api", fixCode: nil)
            throw InttegroError.api(status: http.statusCode, code: "upload_failed", type: nil, fixCode: nil, requestID: requestID, report: report)
        }
        do {
            let selected: Data
            if let field {
                guard let root = try JSONSerialization.jsonObject(with: data) as? [String: Any], let value = root[field] else { throw InttegroError.decoding("missing \(field) in Inttegro response") }
                selected = try JSONSerialization.data(withJSONObject: value)
            } else { selected = data }
            let output = try JSONDecoder.inttegro.decode(Output.self, from: selected)
            record(name: "inttegro.response.decoded", operation: operation, method: "POST", route: path, status: http.statusCode, started: started)
            return output
        } catch let error as InttegroError {
            _ = await finishFailure(operation: operation, method: "POST", route: path, started: started, status: http.statusCode, requestID: requestID, code: nil, category: "decoding", fixCode: nil)
            throw error
        } catch {
            _ = await finishFailure(operation: operation, method: "POST", route: path, started: started, status: http.statusCode, requestID: requestID, code: nil, category: "decoding", fixCode: nil)
            throw InttegroError.decoding(String(describing: error))
        }
    }

    private func multipart(fileName: String, data: Data, fields: [String: String?]) -> (data: Data, contentType: String) {
        let boundary = "inttegro-\(UUID().uuidString)"
        var body = Data()
        for (name, value) in fields {
            guard let value else { continue }
            body.append("--\(boundary)\r\nContent-Disposition: form-data; name=\"\(name)\"\r\n\r\n\(value)\r\n".data(using: .utf8)!)
        }
        body.append("--\(boundary)\r\nContent-Disposition: form-data; name=\"file\"; filename=\"\(fileName)\"\r\nContent-Type: application/octet-stream\r\n\r\n".data(using: .utf8)!)
        body.append(data)
        body.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)
        return (body, "multipart/form-data; boundary=\(boundary)")
    }

    private func record(name: String, operation: String, method: String, route: String, status: Int?, started: Date) {
        guard let telemetry else { return }
        telemetry.record(.init(name: name, operation: operation, method: method, route: route, statusCode: status, durationMilliseconds: Int(Date().timeIntervalSince(started) * 1_000)))
    }

    private func finishFailure(operation: String, method: String, route: String, started: Date, status: Int?, requestID: String?, code: String?, category: String, fixCode: String?) async -> ErrorReport? {
        record(name: "inttegro.request.failed", operation: operation, method: method, route: route, status: status, started: started)
        guard let errorReporter else { return nil }
        if errorReportingPolicy == .unexpected, let status, status < 500, category != "decoding", category != "unknown_error" { return nil }
        let apiError = status == nil ? nil : APIErrorReportContext(type: category, code: code, fixCode: fixCode)
        let report = ErrorReport(schemaVersion: 1, eventId: UUID().uuidString, occurredAt: ISO8601DateFormatter().string(from: Date()), severity: "error", category: category, operation: operation, sdk: .init(language: "swift", version: inttegroSDKVersion), http: .init(method: method.uppercased(), route: route, serverAddress: baseURL.absoluteString, statusCode: status, requestId: requestID, durationMs: Int(Date().timeIntervalSince(started) * 1_000)), apiError: apiError, trace: nil, exceptionType: status == nil ? "URLError" : "InttegroApiError", fingerprint: "inttegro:swift:\(operation):\(category):\(status.map(String.init) ?? "none")")
        await errorReporter.report(report)
        return report
    }
}

private extension JSONEncoder {
    static let inttegro = JSONEncoder()
}

private extension JSONDecoder {
    static let inttegro = JSONDecoder()
}
