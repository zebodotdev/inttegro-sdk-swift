import Foundation

public enum CustomDataError: Swift.Error, Equatable {
    case keyTooLong(String)
    case encodedValueTooLarge
}

public enum PayoutDestinationsError: Swift.Error, Equatable {
    case emptyCurrency
    case emptyFinancialAccountID
}

public struct CustomData: Codable, Sendable, Equatable {
    public static let maximumKeyBytes = 256
    public static let maximumEncodedBytes = 25 * 1024
    private var storage: [String: String]

    public init(_ values: [String: String] = [:]) throws {
        try Self.validate(values)
        storage = values
    }

    public subscript(key: String) -> String? { storage[key] }
    public var count: Int { storage.count }
    public var values: [String: String] { storage }

    public mutating func set(_ value: String, for key: String) throws {
        var candidate = storage
        candidate[key] = value
        try Self.validate(candidate)
        storage = candidate
    }

    public mutating func remove(_ key: String) { storage.removeValue(forKey: key) }

    public init(from decoder: Decoder) throws {
        let values = try [String: String](from: decoder)
        do { try self.init(values) }
        catch { throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Invalid custom data", underlyingError: error)) }
    }

    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }

    fileprivate static func validate<T: Encodable>(_ values: [String: T]) throws {
        if let key = values.keys.first(where: { $0.utf8.count > maximumKeyBytes }) {
            throw CustomDataError.keyTooLong(key)
        }
        if try JSONEncoder().encode(values).count > maximumEncodedBytes {
            throw CustomDataError.encodedValueTooLarge
        }
    }
}

public struct CustomDataInput: Codable, Sendable, Equatable {
    private var storage: [String: JSONValue]

    public init(_ values: [String: JSONValue] = [:]) throws {
        try CustomData.validate(values)
        storage = values
    }

    public subscript(key: String) -> JSONValue? { storage[key] }
    public var count: Int { storage.count }
    public var values: [String: JSONValue] { storage }

    public mutating func set(_ value: JSONValue, for key: String) throws {
        var candidate = storage
        candidate[key] = value
        try CustomData.validate(candidate)
        storage = candidate
    }

    public mutating func remove(_ key: String) { storage.removeValue(forKey: key) }

    public init(from decoder: Decoder) throws {
        let values = try [String: JSONValue](from: decoder)
        do { try self.init(values) }
        catch { throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Invalid custom-data input", underlyingError: error)) }
    }

    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct CustomDataPatch: Codable, Sendable, Equatable {
    private var storage: [String: JSONValue]
    public init() { storage = [:] }
    public subscript(key: String) -> JSONValue? { storage[key] }
    public var count: Int { storage.count }
    public var values: [String: JSONValue] { storage }

    public mutating func set(_ value: JSONValue, for key: String) throws {
        var candidate = storage
        candidate[key] = value
        try CustomData.validate(candidate)
        storage = candidate
    }

    public mutating func unset(_ key: String) throws { try set(.null, for: key) }
    public mutating func removeChange(_ key: String) { storage.removeValue(forKey: key) }
    public init(from decoder: Decoder) throws {
        storage = try [String: JSONValue](from: decoder)
        try CustomData.validate(storage)
    }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct JSONData: Codable, Sendable, Equatable {
    private var storage: [String: JSONValue]
    public init(_ values: [String: JSONValue] = [:]) { storage = values }
    public subscript(key: String) -> JSONValue? { storage[key] }
    public var count: Int { storage.count }
    public var values: [String: JSONValue] { storage }
    public mutating func set(_ value: JSONValue, for key: String) { storage[key] = value }
    public mutating func remove(_ key: String) { storage.removeValue(forKey: key) }
    public init(from decoder: Decoder) throws { storage = try [String: JSONValue](from: decoder) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct FileMetadata: Codable, Sendable, Equatable {
    private let storage: [String: String]
    public init(_ values: [String: String] = [:]) { storage = values }
    public subscript(key: String) -> String? { storage[key] }
    public var count: Int { storage.count }
    public var values: [String: String] { storage }
    public init(from decoder: Decoder) throws { storage = try [String: String](from: decoder) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct PayoutDestinations: Codable, Sendable, Equatable {
    private var storage: [String: String]
    public init(_ values: [String: String] = [:]) throws {
        if values.keys.contains(where: { $0.isEmpty }) { throw PayoutDestinationsError.emptyCurrency }
        if values.values.contains(where: { $0.isEmpty }) { throw PayoutDestinationsError.emptyFinancialAccountID }
        storage = values
    }
    public subscript(currency: String) -> String? { storage[currency] }
    public var values: [String: String] { storage }
    public mutating func set(financialAccountID: String, for currency: String) throws {
        if currency.isEmpty { throw PayoutDestinationsError.emptyCurrency }
        if financialAccountID.isEmpty { throw PayoutDestinationsError.emptyFinancialAccountID }
        storage[currency] = financialAccountID
    }
    public mutating func remove(_ currency: String) { storage.removeValue(forKey: currency) }
    public init(from decoder: Decoder) throws { try self.init([String: String](from: decoder)) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct DoshAccount: Codable, Sendable, Equatable {
    public init() {}
}

public struct FinancialAccountVerificationRequest: Codable, Sendable, Equatable {
    public var id: String?
    public var mechanism: String?
    public var type: String?
    public init(id: String? = nil, mechanism: String? = nil, type: String? = nil) {
        self.id = id
        self.mechanism = mechanism
        self.type = type
    }
}

public struct FinancialAccountVerification: Codable, Sendable, Equatable {
    public var initiatedAt: Date
    public var completedAt: Date?
    public var request: FinancialAccountVerificationRequest
    public init(initiatedAt: Date, completedAt: Date? = nil, request: FinancialAccountVerificationRequest) {
        self.initiatedAt = initiatedAt
        self.completedAt = completedAt
        self.request = request
    }
    private enum CodingKeys: String, CodingKey {
        case initiatedAt = "initiated_at"
        case completedAt = "completed_at"
        case request
    }
}

public struct MessageHeaders: Codable, Sendable, Equatable {
    private var storage: [String: String]
    public init(_ values: [String: String] = [:]) { storage = values }
    public subscript(name: String) -> String? { storage[name] }
    public var values: [String: String] { storage }
    public mutating func set(_ value: String, for name: String) { storage[name] = value }
    public mutating func remove(_ name: String) { storage.removeValue(forKey: name) }
    public init(from decoder: Decoder) throws { storage = try [String: String](from: decoder) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct ProductDimensionDetails: Codable, Sendable, Equatable {
    private var storage: [String: String]
    public init(_ values: [String: String] = [:]) { storage = values }
    public subscript(name: String) -> String? { storage[name] }
    public var values: [String: String] { storage }
    public mutating func set(_ value: String, for name: String) { storage[name] = value }
    public mutating func remove(_ name: String) { storage.removeValue(forKey: name) }
    public init(from decoder: Decoder) throws { storage = try [String: String](from: decoder) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct VariantValues: Codable, Sendable, Equatable {
    private var storage: [String: String]
    public init(_ values: [String: String] = [:]) { storage = values }
    public subscript(name: String) -> String? { storage[name] }
    public var values: [String: String] { storage }
    public mutating func set(_ value: String, for name: String) { storage[name] = value }
    public mutating func remove(_ name: String) { storage.removeValue(forKey: name) }
    public init(from decoder: Decoder) throws { storage = try [String: String](from: decoder) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct CustomerBalance: Codable, Sendable, Equatable {
    private let storage: [String: CustomerBalanceValue]
    public init(_ values: [String: CustomerBalanceValue] = [:]) { storage = values }
    public subscript(currency: String) -> CustomerBalanceValue? { storage[currency] }
    public var values: [String: CustomerBalanceValue] { storage }
    public init(from decoder: Decoder) throws { storage = try [String: CustomerBalanceValue](from: decoder) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

/// Country capabilities keyed by lowercase country code.
public struct CountrySpecifications: Codable, Sendable, Equatable {
    private let storage: [String: CountrySpecification]
    public init(_ values: [String: CountrySpecification] = [:]) { storage = values }
    public subscript(countryCode: String) -> CountrySpecification? { storage[countryCode] }
    public var values: [String: CountrySpecification] { storage }
    public init(from decoder: Decoder) throws { storage = try [String: CountrySpecification](from: decoder) }
    public func encode(to encoder: Encoder) throws { try storage.encode(to: encoder) }
}

public struct OrderPayoutDestination: Codable, Sendable, Equatable {
    public var financialAccountID: String
    public init(financialAccountID: String) { self.financialAccountID = financialAccountID }
    private enum CodingKeys: String, CodingKey { case financialAccountID = "financial_account_id" }
}

public struct OrderPayoutSettings: Codable, Sendable, Equatable {
    public var destination: OrderPayoutDestination?
    public var enableFX: Bool?
    public init(destination: OrderPayoutDestination? = nil, enableFX: Bool? = nil) {
        self.destination = destination
        self.enableFX = enableFX
    }
    private enum CodingKeys: String, CodingKey { case destination; case enableFX = "enable_fx" }
}

public struct Address: Codable, Sendable, Equatable {
    public var name: String
    public var phoneNumber: String
    public var line1: String
    public var line2: String?
    public var town: String
    public var region: String?
    public var district: String?
    public var country: String
    public var postCode: String?
    public init(name: String, phoneNumber: String, line1: String, line2: String? = nil, town: String, region: String? = nil, district: String? = nil, country: String, postCode: String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.line1 = line1
        self.line2 = line2
        self.town = town
        self.region = region
        self.district = district
        self.country = country
        self.postCode = postCode
    }
    private enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber = "phone_number"
        case line1
        case line2
        case town
        case region
        case district
        case country
        case postCode = "post_code"
    }
}

public struct Shipping: Codable, Sendable, Equatable {
    public var address: Address
    public init(address: Address) { self.address = address }
}
