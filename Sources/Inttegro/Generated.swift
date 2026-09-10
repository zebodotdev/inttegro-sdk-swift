// Generated typed Inttegro domain and request values. Do not edit manually.
import Foundation

public enum JSONValue: Codable, Sendable, Equatable {
    case string(String)
    case number(Double)
    case bool(Bool)
    case object([String: JSONValue])
    case array([JSONValue])
    case null

    public init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer()
        if value.decodeNil() { self = .null }
        else if let decoded = try? value.decode(Bool.self) { self = .bool(decoded) }
        else if let decoded = try? value.decode(Double.self) { self = .number(decoded) }
        else if let decoded = try? value.decode(String.self) { self = .string(decoded) }
        else if let decoded = try? value.decode([String: JSONValue].self) { self = .object(decoded) }
        else if let decoded = try? value.decode([JSONValue].self) { self = .array(decoded) }
        else { throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported JSON value")) }
    }

    public func encode(to encoder: Encoder) throws {
        var value = encoder.singleValueContainer()
        switch self {
        case .string(let decoded): try value.encode(decoded)
        case .number(let decoded): try value.encode(decoded)
        case .bool(let decoded): try value.encode(decoded)
        case .object(let decoded): try value.encode(decoded)
        case .array(let decoded): try value.encode(decoded)
        case .null: try value.encodeNil()
        }
    }
}

/// A typed `AppCredentialOwner` value used by the Inttegro API.
public struct AppCredentialOwner: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let child = Self(rawValue: "child")
    public static let parent = Self(rawValue: "parent")
}

/// A typed `AppManagementRole` value used by the Inttegro API.
public struct AppManagementRole: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let parent = Self(rawValue: "parent")
    public static let child = Self(rawValue: "child")
}

/// A typed `AppRelationshipKind` value used by the Inttegro API.
public struct AppRelationshipKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let placement = Self(rawValue: "placement")
}

/// A typed `AppRelationshipStatus` value used by the Inttegro API.
public struct AppRelationshipStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let active = Self(rawValue: "active")
    public static let inactive = Self(rawValue: "inactive")
    public static let suspended = Self(rawValue: "suspended")
    public static let revoked = Self(rawValue: "revoked")
}

/// A typed `BalanceTransactionType` value used by the Inttegro API.
public struct BalanceTransactionType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let payment = Self(rawValue: "payment")
    public static let refund = Self(rawValue: "refund")
}

/// A typed `BankAccountType` value used by the Inttegro API.
public struct BankAccountType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let ghanaBankAccount = Self(rawValue: "ghana_bank_account")
}

/// A typed `CheckoutOrderStatus` value used by the Inttegro API.
public struct CheckoutOrderStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let preparing = Self(rawValue: "preparing")
    public static let requiresPayment = Self(rawValue: "requires_payment")
    public static let completed = Self(rawValue: "completed")
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
}

/// A typed `CheckoutPaymentStatus` value used by the Inttegro API.
public struct CheckoutPaymentStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let requiresAction = Self(rawValue: "requires_action")
    public static let processing = Self(rawValue: "processing")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let failed = Self(rawValue: "failed")
    public static let cancelled = Self(rawValue: "cancelled")
}

/// A typed `ChimeEmailSchemaKind` value used by the Inttegro API.
public struct ChimeEmailSchemaKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let gmailViewAction = Self(rawValue: "gmail_view_action")
    public static let schemaOrgOrder = Self(rawValue: "schema_org_order")
    public static let schemaOrgInvoice = Self(rawValue: "schema_org_invoice")
}

/// A typed `ChimeRecipientType` value used by the Inttegro API.
public struct ChimeRecipientType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let phone = Self(rawValue: "phone")
    public static let email = Self(rawValue: "email")
}

/// A typed `ChimeTransport` value used by the Inttegro API.
public struct ChimeTransport: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let sms = Self(rawValue: "sms")
    public static let email = Self(rawValue: "email")
}

/// A typed `ContentSafetyStatus` value used by the Inttegro API.
public struct ContentSafetyStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let allowed = Self(rawValue: "allowed")
    public static let rejected = Self(rawValue: "rejected")
    public static let quarantined = Self(rawValue: "quarantined")
}

/// A typed `Currency` value used by the Inttegro API.
public struct Currency: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let ghs = Self(rawValue: "ghs")
    public static let usd = Self(rawValue: "usd")
    public static let gbp = Self(rawValue: "gbp")
    public static let eur = Self(rawValue: "eur")
    public static let cny = Self(rawValue: "cny")
}

/// A typed `DeliveryChannel` value used by the Inttegro API.
public struct DeliveryChannel: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let email = Self(rawValue: "email")
    public static let sms = Self(rawValue: "sms")
}

/// A typed `FileDelivery` value used by the Inttegro API.
public struct FileDelivery: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let stream = Self(rawValue: "stream")
    public static let redirect = Self(rawValue: "redirect")
}

/// A typed `FileDisposition` value used by the Inttegro API.
public struct FileDisposition: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let attachment = Self(rawValue: "attachment")
    public static let inline = Self(rawValue: "inline")
}

/// A typed `FileLinkDeliveryMode` value used by the Inttegro API.
public struct FileLinkDeliveryMode: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let redirect = Self(rawValue: "redirect")
    public static let download = Self(rawValue: "download")
    public static let inline = Self(rawValue: "inline")
}

/// A typed `FileLinkKind` value used by the Inttegro API.
public struct FileLinkKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let `public` = Self(rawValue: "public")
}

/// A typed `FileLinkStatus` value used by the Inttegro API.
public struct FileLinkStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let active = Self(rawValue: "active")
    public static let revoked = Self(rawValue: "revoked")
    public static let expired = Self(rawValue: "expired")
    public static let disabled = Self(rawValue: "disabled")
}

/// A typed `FileScanStatus` value used by the Inttegro API.
public struct FileScanStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let pending = Self(rawValue: "pending")
    public static let passed = Self(rawValue: "passed")
    public static let failed = Self(rawValue: "failed")
    public static let skipped = Self(rawValue: "skipped")
}

/// A typed `FileSourceType` value used by the Inttegro API.
public struct FileSourceType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let direct = Self(rawValue: "direct")
    public static let uploadRequest = Self(rawValue: "upload_request")
    public static let service = Self(rawValue: "service")
}

/// A typed `FileStatus` value used by the Inttegro API.
public struct FileStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let uploading = Self(rawValue: "uploading")
    public static let processing = Self(rawValue: "processing")
    public static let available = Self(rawValue: "available")
    public static let failed = Self(rawValue: "failed")
    public static let deleted = Self(rawValue: "deleted")
}

/// A typed `FileStorageEncoding` value used by the Inttegro API.
public struct FileStorageEncoding: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let identity = Self(rawValue: "identity")
    public static let brotli = Self(rawValue: "br")
}

/// A typed `FinancialAccountType` value used by the Inttegro API.
public struct FinancialAccountType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let wallet = Self(rawValue: "wallet")
    public static let bankAccount = Self(rawValue: "bank_account")
    public static let doshAccount = Self(rawValue: "dosh_account")
}

/// A typed `LineItemType` value used by the Inttegro API.
public struct LineItemType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let product = Self(rawValue: "product")
    public static let fee = Self(rawValue: "fee")
    public static let shipping = Self(rawValue: "shipping")
}

/// A typed `MessageTemplateChannel` value used by the Inttegro API.
public struct MessageTemplateChannel: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let sms = Self(rawValue: "sms")
    public static let email = Self(rawValue: "email")
}

/// A typed `MessageTemplateStatus` value used by the Inttegro API.
public struct MessageTemplateStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let draft = Self(rawValue: "draft")
    public static let published = Self(rawValue: "published")
    public static let archived = Self(rawValue: "archived")
}

/// A typed `MessageTemplateVariableItemType` value used by the Inttegro API.
public struct MessageTemplateVariableItemType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let string = Self(rawValue: "string")
    public static let number = Self(rawValue: "number")
    public static let integer = Self(rawValue: "integer")
    public static let boolean = Self(rawValue: "boolean")
    public static let url = Self(rawValue: "url")
    public static let email = Self(rawValue: "email")
    public static let phone = Self(rawValue: "phone")
    public static let date = Self(rawValue: "date")
    public static let datetime = Self(rawValue: "datetime")
}

/// A typed `MessageTemplateVariableType` value used by the Inttegro API.
public struct MessageTemplateVariableType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let string = Self(rawValue: "string")
    public static let number = Self(rawValue: "number")
    public static let integer = Self(rawValue: "integer")
    public static let boolean = Self(rawValue: "boolean")
    public static let url = Self(rawValue: "url")
    public static let email = Self(rawValue: "email")
    public static let phone = Self(rawValue: "phone")
    public static let date = Self(rawValue: "date")
    public static let datetime = Self(rawValue: "datetime")
    public static let array = Self(rawValue: "array")
}

/// A typed `MobileMoneyNetwork` value used by the Inttegro API.
public struct MobileMoneyNetwork: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let airtel = Self(rawValue: "airtel")
    public static let mtn = Self(rawValue: "mtn")
    public static let telecel = Self(rawValue: "telecel")
    public static let vodafone = Self(rawValue: "vodafone")
}

/// A typed `OTPAlphabetType` value used by the Inttegro API.
public struct OTPAlphabetType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let numeric = Self(rawValue: "numeric")
    public static let alpha = Self(rawValue: "alpha")
    public static let alphanumeric = Self(rawValue: "alphanumeric")
}

/// A typed `OTPStatus` value used by the Inttegro API.
public struct OTPStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
    public static let pending = Self(rawValue: "pending")
    public static let pendingDelivery = Self(rawValue: "pending_delivery")
    public static let pendingVerification = Self(rawValue: "pending_verification")
    public static let verified = Self(rawValue: "verified")
}

/// A typed `OTPTransmissionStatus` value used by the Inttegro API.
public struct OTPTransmissionStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let delivered = Self(rawValue: "delivered")
    public static let failed = Self(rawValue: "failed")
    public static let submitted = Self(rawValue: "submitted")
}

/// A typed `OTPVerificationVerdict` value used by the Inttegro API.
public struct OTPVerificationVerdict: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let fail = Self(rawValue: "fail")
    public static let pass = Self(rawValue: "pass")
}

/// A typed `OrderCreatedFromResourceType` value used by the Inttegro API.
public struct OrderCreatedFromResourceType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let purchaseIntent = Self(rawValue: "purchase_intent")
}

/// A typed `OrderDocumentKind` value used by the Inttegro API.
public struct OrderDocumentKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let invoice = Self(rawValue: "invoice")
    public static let receipt = Self(rawValue: "receipt")
}

/// A typed `OrderStatus` value used by the Inttegro API.
public struct OrderStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let preparing = Self(rawValue: "preparing")
    public static let requiresPayment = Self(rawValue: "requires_payment")
    public static let paid = Self(rawValue: "paid")
    public static let completed = Self(rawValue: "completed")
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
    public static let unknown = Self(rawValue: "unknown")
}

/// A typed `PaymentAttemptStatus` value used by the Inttegro API.
public struct PaymentAttemptStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let initiated = Self(rawValue: "initiated")
    public static let executed = Self(rawValue: "executed")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
    public static let failed = Self(rawValue: "failed")
    public static let unknown = Self(rawValue: "unknown")
}

/// A typed `PaymentConfirmationChannel` value used by the Inttegro API.
public struct PaymentConfirmationChannel: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let sms = Self(rawValue: "sms")
    public static let email = Self(rawValue: "email")
    public static let push = Self(rawValue: "push")
}

/// A typed `PaymentMethodType` value used by the Inttegro API.
public struct PaymentMethodType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let mobileMoney = Self(rawValue: "mobile_money")
    public static let bankAccount = Self(rawValue: "bank_account")
    public static let card = Self(rawValue: "card")
    public static let motito = Self(rawValue: "motito")
}

/// A typed `PaymentNextActionType` value used by the Inttegro API.
public struct PaymentNextActionType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let confirmPayment = Self(rawValue: "confirm_payment")
    public static let execute = Self(rawValue: "execute")
    public static let redirect = Self(rawValue: "redirect")
    public static let authorizePayment = Self(rawValue: "authorize_payment")
    public static let requestConfirmation = Self(rawValue: "request_confirmation")
}

/// A typed `PaymentResultStatus` value used by the Inttegro API.
public struct PaymentResultStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let pending = Self(rawValue: "pending")
    public static let requiresConfirmation = Self(rawValue: "requires_confirmation")
    public static let processing = Self(rawValue: "processing")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let failed = Self(rawValue: "failed")
}

/// A typed `PaymentStatus` value used by the Inttegro API.
public struct PaymentStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let initiated = Self(rawValue: "initiated")
    public static let requiresAction = Self(rawValue: "requires_action")
    public static let overdue = Self(rawValue: "overdue")
    public static let executed = Self(rawValue: "executed")
    public static let paid = Self(rawValue: "paid")
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
    public static let failed = Self(rawValue: "failed")
    public static let unknown = Self(rawValue: "unknown")
}

/// A typed `PayoutStatus` value used by the Inttegro API.
public struct PayoutStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let initialized = Self(rawValue: "initialized")
    public static let scheduled = Self(rawValue: "scheduled")
    public static let processing = Self(rawValue: "processing")
    public static let executing = Self(rawValue: "executing")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let invalid = Self(rawValue: "invalid")
    public static let canceled = Self(rawValue: "canceled")
}

/// A typed `ProductShipmentInputType` value used by the Inttegro API.
public struct ProductShipmentInputType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let delivery = Self(rawValue: "delivery")
    public static let download = Self(rawValue: "download")
    public static let render = Self(rawValue: "render")
    public static let stream = Self(rawValue: "stream")
}

/// A typed `ProductShipmentType` value used by the Inttegro API.
public struct ProductShipmentType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let delivery = Self(rawValue: "delivery")
    public static let download = Self(rawValue: "download")
    public static let render = Self(rawValue: "render")
    public static let service = Self(rawValue: "service")
    public static let stream = Self(rawValue: "stream")
}

/// A typed `ProductType` value used by the Inttegro API.
public struct ProductType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let physical = Self(rawValue: "physical")
    public static let digital = Self(rawValue: "digital")
    public static let service = Self(rawValue: "service")
    public static let voucher = Self(rawValue: "voucher")
    public static let custom = Self(rawValue: "custom")
    public static let cause = Self(rawValue: "cause")
}

/// A typed `PurchaseIntentActivityType` value used by the Inttegro API.
public struct PurchaseIntentActivityType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let expiredViewed = Self(rawValue: "expired_viewed")
    public static let orderCreated = Self(rawValue: "order_created")
    public static let paymentFailed = Self(rawValue: "payment_failed")
    public static let paymentStarted = Self(rawValue: "payment_started")
    public static let viewed = Self(rawValue: "viewed")
}

/// A typed `PurchaseIntentStatus` value used by the Inttegro API.
public struct PurchaseIntentStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let active = Self(rawValue: "active")
    public static let expired = Self(rawValue: "expired")
    public static let inactive = Self(rawValue: "inactive")
    public static let used = Self(rawValue: "used")
}

/// A typed `RefundReason` value used by the Inttegro API.
public struct RefundReason: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let requestedByCustomer = Self(rawValue: "requested_by_customer")
    public static let duplicate = Self(rawValue: "duplicate")
    public static let fraudulent = Self(rawValue: "fraudulent")
    public static let orderCanceled = Self(rawValue: "order_canceled")
    public static let itemReturned = Self(rawValue: "item_returned")
    public static let itemDamaged = Self(rawValue: "item_damaged")
    public static let itemNotReceived = Self(rawValue: "item_not_received")
    public static let itemNotAsDescribed = Self(rawValue: "item_not_as_described")
    public static let custom = Self(rawValue: "custom")
}

/// A typed `RefundStatus` value used by the Inttegro API.
public struct RefundStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let canceled = Self(rawValue: "canceled")
    public static let failed = Self(rawValue: "failed")
    public static let pending = Self(rawValue: "pending")
    public static let processing = Self(rawValue: "processing")
    public static let succeeded = Self(rawValue: "succeeded")
}

/// A typed `SecretKeyAuthResult` value used by the Inttegro API.
public struct SecretKeyAuthResult: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let succeeded = Self(rawValue: "succeeded")
    public static let failed = Self(rawValue: "failed")
}

/// A typed `SecretKeyStatus` value used by the Inttegro API.
public struct SecretKeyStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let active = Self(rawValue: "active")
    public static let revoked = Self(rawValue: "revoked")
    public static let expired = Self(rawValue: "expired")
}

/// A typed `SecretKeyTokenType` value used by the Inttegro API.
public struct SecretKeyTokenType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let bearer = Self(rawValue: "bearer")
}

/// A typed `UploadRequestStatus` value used by the Inttegro API.
public struct UploadRequestStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let pending = Self(rawValue: "pending")
    public static let uploading = Self(rawValue: "uploading")
    public static let fulfilled = Self(rawValue: "fulfilled")
    public static let expired = Self(rawValue: "expired")
    public static let canceled = Self(rawValue: "canceled")
    public static let failed = Self(rawValue: "failed")
}

/// A typed `UploadReviewDecision` value used by the Inttegro API.
public struct UploadReviewDecision: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let approved = Self(rawValue: "approved")
    public static let rejected = Self(rawValue: "rejected")
}

/// A typed `UploadReviewType` value used by the Inttegro API.
public struct UploadReviewType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let automatic = Self(rawValue: "automatic")
    public static let manual = Self(rawValue: "manual")
}

/// A typed `WalletType` value used by the Inttegro API.
public struct WalletType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let mobileMoney = Self(rawValue: "mobile_money")
}

public enum ChimeInlineRecipientInput: Codable, Sendable, Equatable {
    case chimeInlineRecipientInputVariant1(ChimeInlineRecipientInputVariant1)
    case chimeInlineRecipientInputVariant2(ChimeInlineRecipientInputVariant2)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChimeInlineRecipientInputVariant1.self) { self = .chimeInlineRecipientInputVariant1(value); return }
        if let value = try? container.decode(ChimeInlineRecipientInputVariant2.self) { self = .chimeInlineRecipientInputVariant2(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .chimeInlineRecipientInputVariant1(let value): try container.encode(value)
        case .chimeInlineRecipientInputVariant2(let value): try container.encode(value)
        }
    }
}

public enum ChimeRecipientInput: Codable, Sendable, Equatable {
    case chimeInlineRecipientInputVariant1(ChimeInlineRecipientInputVariant1)
    case chimeInlineRecipientInputVariant2(ChimeInlineRecipientInputVariant2)
    case chimeSavedCustomerRecipientInput(ChimeSavedCustomerRecipientInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChimeInlineRecipientInputVariant1.self) { self = .chimeInlineRecipientInputVariant1(value); return }
        if let value = try? container.decode(ChimeInlineRecipientInputVariant2.self) { self = .chimeInlineRecipientInputVariant2(value); return }
        if let value = try? container.decode(ChimeSavedCustomerRecipientInput.self) { self = .chimeSavedCustomerRecipientInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .chimeInlineRecipientInputVariant1(let value): try container.encode(value)
        case .chimeInlineRecipientInputVariant2(let value): try container.encode(value)
        case .chimeSavedCustomerRecipientInput(let value): try container.encode(value)
        }
    }
}

public enum CreateMessageTemplateRequest: Codable, Sendable, Equatable {
    case createSmsMessageTemplateRequest(CreateSMSMessageTemplateRequest)
    case createEmailMessageTemplateRequest(CreateEmailMessageTemplateRequest)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateSMSMessageTemplateRequest.self) { self = .createSmsMessageTemplateRequest(value); return }
        if let value = try? container.decode(CreateEmailMessageTemplateRequest.self) { self = .createEmailMessageTemplateRequest(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .createSmsMessageTemplateRequest(let value): try container.encode(value)
        case .createEmailMessageTemplateRequest(let value): try container.encode(value)
        }
    }
}

public enum CreateOrderRequest: Codable, Sendable, Equatable {
    case createOrderNewCustomerInput(CreateOrderNewCustomerInput)
    case createOrderExistingCustomerInput(CreateOrderExistingCustomerInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateOrderNewCustomerInput.self) { self = .createOrderNewCustomerInput(value); return }
        if let value = try? container.decode(CreateOrderExistingCustomerInput.self) { self = .createOrderExistingCustomerInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .createOrderNewCustomerInput(let value): try container.encode(value)
        case .createOrderExistingCustomerInput(let value): try container.encode(value)
        }
    }
}

public enum FinancialAccountCreateRequest: Codable, Sendable, Equatable {
    case financialAccountWalletRequest(FinancialAccountWalletRequest)
    case financialAccountBankRequest(FinancialAccountBankRequest)
    case financialAccountDoshRequest(FinancialAccountDoshRequest)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(FinancialAccountWalletRequest.self) { self = .financialAccountWalletRequest(value); return }
        if let value = try? container.decode(FinancialAccountBankRequest.self) { self = .financialAccountBankRequest(value); return }
        if let value = try? container.decode(FinancialAccountDoshRequest.self) { self = .financialAccountDoshRequest(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .financialAccountWalletRequest(let value): try container.encode(value)
        case .financialAccountBankRequest(let value): try container.encode(value)
        case .financialAccountDoshRequest(let value): try container.encode(value)
        }
    }
}

public enum LineItemInput: Codable, Sendable, Equatable {
    case productLineItemInput(ProductLineItemInput)
    case feeLineItemInput(FeeLineItemInput)
    case shippingLineItemInput(ShippingLineItemInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ProductLineItemInput.self) { self = .productLineItemInput(value); return }
        if let value = try? container.decode(FeeLineItemInput.self) { self = .feeLineItemInput(value); return }
        if let value = try? container.decode(ShippingLineItemInput.self) { self = .shippingLineItemInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .productLineItemInput(let value): try container.encode(value)
        case .feeLineItemInput(let value): try container.encode(value)
        case .shippingLineItemInput(let value): try container.encode(value)
        }
    }
}

/// A typed Inttegro value.
public typealias MessageTemplateAttachmentIDs = [String]

/// A typed Inttegro value.
public typealias MessageTemplateAttachmentIDsInput = [String]

/// A typed Inttegro value.
public typealias MessageTemplateVariablesInput = JSONData

public enum OrderLineItem: Codable, Sendable, Equatable {
    case orderProductLineItem(OrderProductLineItem)
    case orderFeeLineItem(OrderFeeLineItem)
    case orderShippingLineItem(OrderShippingLineItem)
    case orderDiscountLineItem(OrderDiscountLineItem)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(OrderProductLineItem.self) { self = .orderProductLineItem(value); return }
        if let value = try? container.decode(OrderFeeLineItem.self) { self = .orderFeeLineItem(value); return }
        if let value = try? container.decode(OrderShippingLineItem.self) { self = .orderShippingLineItem(value); return }
        if let value = try? container.decode(OrderDiscountLineItem.self) { self = .orderDiscountLineItem(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .orderProductLineItem(let value): try container.encode(value)
        case .orderFeeLineItem(let value): try container.encode(value)
        case .orderShippingLineItem(let value): try container.encode(value)
        case .orderDiscountLineItem(let value): try container.encode(value)
        }
    }
}

public enum ProductDetailsInput: Codable, Sendable, Equatable {
    case inlineProductDetailsInput(InlineProductDetailsInput)
    case catalogProductWithPriceDataInput(CatalogProductWithPriceDataInput)
    case catalogProductWithPriceReferenceInput(CatalogProductWithPriceReferenceInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(InlineProductDetailsInput.self) { self = .inlineProductDetailsInput(value); return }
        if let value = try? container.decode(CatalogProductWithPriceDataInput.self) { self = .catalogProductWithPriceDataInput(value); return }
        if let value = try? container.decode(CatalogProductWithPriceReferenceInput.self) { self = .catalogProductWithPriceReferenceInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .inlineProductDetailsInput(let value): try container.encode(value)
        case .catalogProductWithPriceDataInput(let value): try container.encode(value)
        case .catalogProductWithPriceReferenceInput(let value): try container.encode(value)
        }
    }
}

/// A typed Inttegro value.
public typealias RefundReasonInput = RefundReason

/// A typed Inttegro value.
public typealias RefundReasonValue = RefundReason

public enum ReviewUploadRequestAttemptRequest: Codable, Sendable, Equatable {
    case reviewUploadRequestAttemptByIdRequest(ReviewUploadRequestAttemptByIDRequest)
    case reviewUploadRequestAttemptByOrdinalRequest(ReviewUploadRequestAttemptByOrdinalRequest)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ReviewUploadRequestAttemptByIDRequest.self) { self = .reviewUploadRequestAttemptByIdRequest(value); return }
        if let value = try? container.decode(ReviewUploadRequestAttemptByOrdinalRequest.self) { self = .reviewUploadRequestAttemptByOrdinalRequest(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .reviewUploadRequestAttemptByIdRequest(let value): try container.encode(value)
        case .reviewUploadRequestAttemptByOrdinalRequest(let value): try container.encode(value)
        }
    }
}

public enum BroadcastRequestMessageTemplate: Codable, Sendable, Equatable {
    case string(String)
    case messageTemplateReferenceInput(MessageTemplateReferenceInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) { self = .string(value); return }
        if let value = try? container.decode(MessageTemplateReferenceInput.self) { self = .messageTemplateReferenceInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let value): try container.encode(value)
        case .messageTemplateReferenceInput(let value): try container.encode(value)
        }
    }
}

public enum ProductLineItemInputProduct: Codable, Sendable, Equatable {
    case inlineProductDetailsInput(InlineProductDetailsInput)
    case catalogProductWithPriceDataInput(CatalogProductWithPriceDataInput)
    case catalogProductWithPriceReferenceInput(CatalogProductWithPriceReferenceInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(InlineProductDetailsInput.self) { self = .inlineProductDetailsInput(value); return }
        if let value = try? container.decode(CatalogProductWithPriceDataInput.self) { self = .catalogProductWithPriceDataInput(value); return }
        if let value = try? container.decode(CatalogProductWithPriceReferenceInput.self) { self = .catalogProductWithPriceReferenceInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .inlineProductDetailsInput(let value): try container.encode(value)
        case .catalogProductWithPriceDataInput(let value): try container.encode(value)
        case .catalogProductWithPriceReferenceInput(let value): try container.encode(value)
        }
    }
}

public enum SendChimeRequestRecipient: Codable, Sendable, Equatable {
    case chimeInlineRecipientInputVariant1(ChimeInlineRecipientInputVariant1)
    case chimeInlineRecipientInputVariant2(ChimeInlineRecipientInputVariant2)
    case chimeSavedCustomerRecipientInput(ChimeSavedCustomerRecipientInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChimeInlineRecipientInputVariant1.self) { self = .chimeInlineRecipientInputVariant1(value); return }
        if let value = try? container.decode(ChimeInlineRecipientInputVariant2.self) { self = .chimeInlineRecipientInputVariant2(value); return }
        if let value = try? container.decode(ChimeSavedCustomerRecipientInput.self) { self = .chimeSavedCustomerRecipientInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .chimeInlineRecipientInputVariant1(let value): try container.encode(value)
        case .chimeInlineRecipientInputVariant2(let value): try container.encode(value)
        case .chimeSavedCustomerRecipientInput(let value): try container.encode(value)
        }
    }
}

/// Typed Inttegro request parameters.
public struct ActivatePaymentMethodRequest: Codable, Sendable, Equatable {
    public var paymentMethodId: String

    public init(
        paymentMethodId: String
    ) {
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
    }
}

/// Typed Inttegro request parameters.
public struct AddProductPriceRequest: Codable, Sendable, Equatable {
    public var label: String?
    public var about: String?
    public var productId: String
    public var amount: AmountParams

    public init(
        label: String? = nil,
        about: String? = nil,
        productId: String,
        amount: AmountParams
    ) {
        self.label = label
        self.about = about
        self.productId = productId
        self.amount = amount
    }

    private enum CodingKeys: String, CodingKey {
        case label
        case about
        case productId = "product_id"
        case amount
    }
}

/// Typed Inttegro request parameters.
public struct AddressInput: Codable, Sendable, Equatable {
    public var line2: String?
    public var region: String?
    public var district: String?
    public var postCode: String?
    public var name: String
    public var phoneNumber: String
    public var line1: String
    public var town: String
    public var country: String

    public init(
        line2: String? = nil,
        region: String? = nil,
        district: String? = nil,
        postCode: String? = nil,
        name: String,
        phoneNumber: String,
        line1: String,
        town: String,
        country: String
    ) {
        self.line2 = line2
        self.region = region
        self.district = district
        self.postCode = postCode
        self.name = name
        self.phoneNumber = phoneNumber
        self.line1 = line1
        self.town = town
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case line2
        case region
        case district
        case postCode = "post_code"
        case name
        case phoneNumber = "phone_number"
        case line1
        case town
        case country
    }
}

/// Typed Inttegro domain value.
public struct Amount: Codable, Sendable, Equatable {
    public var currency: Currency
    public var value: Int

    public init(
        currency: Currency,
        value: Int
    ) {
        self.currency = currency
        self.value = value
    }
}

/// Typed Inttegro request parameters.
public struct AmountParams: Codable, Sendable, Equatable {
    public var currency: Currency
    public var value: Int

    public init(
        currency: Currency,
        value: Int
    ) {
        self.currency = currency
        self.value = value
    }
}

/// Typed Inttegro domain value.
public struct Application: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var alias: String?
    public var description: String?
    public var createdAt: Date
    public var updatedAt: Date?
    public var archivedAt: Date?
    public var secretKey: ApplicationSecretKey?
    public var relationship: ApplicationRelationship?

    public init(
        id: String,
        name: String,
        alias: String? = nil,
        description: String? = nil,
        createdAt: Date,
        updatedAt: Date? = nil,
        archivedAt: Date? = nil,
        secretKey: ApplicationSecretKey? = nil,
        relationship: ApplicationRelationship? = nil
    ) {
        self.id = id
        self.name = name
        self.alias = alias
        self.description = description
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.archivedAt = archivedAt
        self.secretKey = secretKey
        self.relationship = relationship
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case alias
        case description
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case archivedAt = "archived_at"
        case secretKey = "secret_key"
        case relationship
    }
}

/// Typed Inttegro domain value.
public struct ApplicationRelationship: Codable, Sendable, Equatable {
    public var id: String
    public var kind: AppRelationshipKind
    public var policyVersion: String
    public var status: AppRelationshipStatus
    public var actorAppId: String
    public var creatorAppId: String
    public var placementParentAppId: String
    public var subjectAppId: String
    public var childAppId: String
    public var childStanding: String
    public var relationshipPolicy: ApplicationRelationshipPolicy
    public var retainedCreatorAuthorityExists: Bool
    public var createdAt: Date

    public init(
        id: String,
        kind: AppRelationshipKind,
        policyVersion: String,
        status: AppRelationshipStatus,
        actorAppId: String,
        creatorAppId: String,
        placementParentAppId: String,
        subjectAppId: String,
        childAppId: String,
        childStanding: String,
        relationshipPolicy: ApplicationRelationshipPolicy,
        retainedCreatorAuthorityExists: Bool,
        createdAt: Date
    ) {
        self.id = id
        self.kind = kind
        self.policyVersion = policyVersion
        self.status = status
        self.actorAppId = actorAppId
        self.creatorAppId = creatorAppId
        self.placementParentAppId = placementParentAppId
        self.subjectAppId = subjectAppId
        self.childAppId = childAppId
        self.childStanding = childStanding
        self.relationshipPolicy = relationshipPolicy
        self.retainedCreatorAuthorityExists = retainedCreatorAuthorityExists
        self.createdAt = createdAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case kind
        case policyVersion = "policy_version"
        case status
        case actorAppId = "actor_app_id"
        case creatorAppId = "creator_app_id"
        case placementParentAppId = "placement_parent_app_id"
        case subjectAppId = "subject_app_id"
        case childAppId = "child_app_id"
        case childStanding = "child_standing"
        case relationshipPolicy = "relationship_policy"
        case retainedCreatorAuthorityExists = "retained_creator_authority_exists"
        case createdAt = "created_at"
    }
}

/// Typed Inttegro domain value.
public struct ApplicationRelationshipPolicy: Codable, Sendable, Equatable {
    public var childStanding: String
    public var management: AppManagementRole
    public var credentials: AppCredentialOwner

    public init(
        childStanding: String,
        management: AppManagementRole,
        credentials: AppCredentialOwner
    ) {
        self.childStanding = childStanding
        self.management = management
        self.credentials = credentials
    }

    private enum CodingKeys: String, CodingKey {
        case childStanding = "child_standing"
        case management
        case credentials
    }
}

/// Typed Inttegro domain value.
public struct ApplicationSecretKey: Codable, Sendable, Equatable {
    public var id: String?
    public var tokenType: String?
    public var issuedAt: Date?
    public var token: String?

    public init(
        id: String? = nil,
        tokenType: String? = nil,
        issuedAt: Date? = nil,
        token: String? = nil
    ) {
        self.id = id
        self.tokenType = tokenType
        self.issuedAt = issuedAt
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case tokenType = "token_type"
        case issuedAt = "issued_at"
        case token
    }
}

/// Typed Inttegro request parameters.
public struct ArchivePaymentMethodRequest: Codable, Sendable, Equatable {
    public var paymentMethodId: String

    public init(
        paymentMethodId: String
    ) {
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
    }
}

/// Typed Inttegro domain value.
public struct BalanceTransaction: Codable, Sendable, Equatable {
    public var amount: BalanceTransactionAmount
    public var availableAt: Date?
    public var claimedAt: Date?
    public var createdAt: Date
    public var id: String
    public var orderId: String
    public var paidAt: Date?
    public var paymentId: String?
    public var payoutId: String?
    public var payoutConfiguration: PaymentPayoutConfiguration?
    public var refundId: String?
    public var type: BalanceTransactionType

    public init(
        amount: BalanceTransactionAmount,
        availableAt: Date? = nil,
        claimedAt: Date? = nil,
        createdAt: Date,
        id: String,
        orderId: String,
        paidAt: Date? = nil,
        paymentId: String? = nil,
        payoutId: String? = nil,
        payoutConfiguration: PaymentPayoutConfiguration? = nil,
        refundId: String? = nil,
        type: BalanceTransactionType
    ) {
        self.amount = amount
        self.availableAt = availableAt
        self.claimedAt = claimedAt
        self.createdAt = createdAt
        self.id = id
        self.orderId = orderId
        self.paidAt = paidAt
        self.paymentId = paymentId
        self.payoutId = payoutId
        self.payoutConfiguration = payoutConfiguration
        self.refundId = refundId
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case amount
        case availableAt = "available_at"
        case claimedAt = "claimed_at"
        case createdAt = "created_at"
        case id
        case orderId = "order_id"
        case paidAt = "paid_at"
        case paymentId = "payment_id"
        case payoutId = "payout_id"
        case payoutConfiguration = "payout_configuration"
        case refundId = "refund_id"
        case type
    }
}

/// Typed Inttegro domain value.
public struct BalanceTransactionAmount: Codable, Sendable, Equatable {
    public var currency: String
    public var value: Int

    public init(
        currency: String,
        value: Int
    ) {
        self.currency = currency
        self.value = value
    }
}

/// Typed Inttegro domain value.
public struct BalanceTransactionPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var transactions: [BalanceTransaction]?

    public init(
        number: Int,
        size: Int,
        transactions: [BalanceTransaction]? = nil
    ) {
        self.number = number
        self.size = size
        self.transactions = transactions
    }
}

/// Typed Inttegro domain value.
public struct BalanceValue: Codable, Sendable, Equatable {
    public var amount: Int

    public init(
        amount: Int
    ) {
        self.amount = amount
    }
}

/// Typed Inttegro request parameters.
public struct BillingDetailsInput: Codable, Sendable, Equatable {
    public var address: AddressInput?
    public var name: String
    public var emailAddress: String
    public var phoneNumber: String

    public init(
        address: AddressInput? = nil,
        name: String,
        emailAddress: String,
        phoneNumber: String
    ) {
        self.address = address
        self.name = name
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
    }

    private enum CodingKeys: String, CodingKey {
        case address
        case name
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
    }
}

/// Typed Inttegro domain value.
public struct BroadcastCancelDetail: Codable, Sendable, Equatable {
    public var chimeIds: [String]?
    public var content: String
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var errors: [BroadcastError]?
    public var executedAt: Date?
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]
    public var sendAfter: Date
    public var senderId: String
    public var canceledAt: Date?

    public init(
        chimeIds: [String]? = nil,
        content: String,
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        errors: [BroadcastError]? = nil,
        executedAt: Date? = nil,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String],
        sendAfter: Date,
        senderId: String,
        canceledAt: Date? = nil
    ) {
        self.chimeIds = chimeIds
        self.content = content
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.errors = errors
        self.executedAt = executedAt
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
        self.canceledAt = canceledAt
    }

    private enum CodingKeys: String, CodingKey {
        case chimeIds = "chime_ids"
        case content
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case errors
        case executedAt = "executed_at"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
        case canceledAt = "canceled_at"
    }
}

/// Typed Inttegro domain value.
public struct BroadcastCreationDetail: Codable, Sendable, Equatable {
    public var content: String
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]
    public var sendAfter: Date
    public var senderId: String

    public init(
        content: String,
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String],
        sendAfter: Date,
        senderId: String
    ) {
        self.content = content
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case content
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
    }
}

/// Typed Inttegro domain value.
public struct BroadcastDetail: Codable, Sendable, Equatable {
    public var chimeIds: [String]?
    public var content: String
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var errors: [BroadcastError]?
    public var executedAt: Date?
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]
    public var sendAfter: Date
    public var senderId: String

    public init(
        chimeIds: [String]? = nil,
        content: String,
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        errors: [BroadcastError]? = nil,
        executedAt: Date? = nil,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String],
        sendAfter: Date,
        senderId: String
    ) {
        self.chimeIds = chimeIds
        self.content = content
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.errors = errors
        self.executedAt = executedAt
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case chimeIds = "chime_ids"
        case content
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case errors
        case executedAt = "executed_at"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
    }
}

/// Typed Inttegro domain value.
public struct BroadcastError: Codable, Sendable, Equatable {
    public var recipient: String?
    public var fixCode: String?
    public var type: String?

    public init(
        recipient: String? = nil,
        fixCode: String? = nil,
        type: String? = nil
    ) {
        self.recipient = recipient
        self.fixCode = fixCode
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case recipient
        case fixCode = "fix_code"
        case type
    }
}

/// Typed Inttegro request parameters.
public struct BroadcastRequest: Codable, Sendable, Equatable {
    public var requestMeta: BroadcastRequestRequestMeta?
    public var messageTemplate: BroadcastRequestMessageTemplate?
    public var email: ChimeEmailMessageInput?
    public var purpose: String?
    public var sender: String?
    public var recipients: [JSONValue]

    public init(
        requestMeta: BroadcastRequestRequestMeta? = nil,
        messageTemplate: BroadcastRequestMessageTemplate? = nil,
        email: ChimeEmailMessageInput? = nil,
        purpose: String? = nil,
        sender: String? = nil,
        recipients: [JSONValue]
    ) {
        self.requestMeta = requestMeta
        self.messageTemplate = messageTemplate
        self.email = email
        self.purpose = purpose
        self.sender = sender
        self.recipients = recipients
    }

    private enum CodingKeys: String, CodingKey {
        case requestMeta = "request_meta"
        case messageTemplate = "message_template"
        case email
        case purpose
        case sender
        case recipients
    }
}

/// Typed Inttegro request parameters.
public struct BroadcastRequestRequestMeta: Codable, Sendable, Equatable {
    public var idempotencyKey: String?

    public init(
        idempotencyKey: String? = nil
    ) {
        self.idempotencyKey = idempotencyKey
    }

    private enum CodingKeys: String, CodingKey {
        case idempotencyKey = "idempotency_key"
    }
}

/// Typed Inttegro request parameters.
public struct CancelBroadcastRequest: Codable, Sendable, Equatable {
    public var broadcastId: String

    public init(
        broadcastId: String
    ) {
        self.broadcastId = broadcastId
    }

    private enum CodingKeys: String, CodingKey {
        case broadcastId = "broadcast_id"
    }
}

/// Typed Inttegro request parameters.
public struct CancelOrderRequest: Codable, Sendable, Equatable {
    public var reason: String?
    public var executeRefund: Bool?
    public var orderId: String

    public init(
        reason: String? = nil,
        executeRefund: Bool? = nil,
        orderId: String
    ) {
        self.reason = reason
        self.executeRefund = executeRefund
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case reason
        case executeRefund = "execute_refund"
        case orderId = "order_id"
    }
}

/// Typed Inttegro request parameters.
public struct CancelPayoutRequest: Codable, Sendable, Equatable {
    public var payoutId: String

    public init(
        payoutId: String
    ) {
        self.payoutId = payoutId
    }

    private enum CodingKeys: String, CodingKey {
        case payoutId = "payout_id"
    }
}

/// Typed Inttegro request parameters.
public struct CancelPurchaseIntentRequest: Codable, Sendable, Equatable {
    public var id: String?
    public var purchaseIntentId: String?

    public init(
        id: String? = nil,
        purchaseIntentId: String? = nil
    ) {
        self.id = id
        self.purchaseIntentId = purchaseIntentId
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case purchaseIntentId = "purchase_intent_id"
    }
}

/// Typed Inttegro request parameters.
public struct CancelRefundRequest: Codable, Sendable, Equatable {
    public var requestMeta: RefundRequestMetaInput?
    public var refundId: String

    public init(
        requestMeta: RefundRequestMetaInput? = nil,
        refundId: String
    ) {
        self.requestMeta = requestMeta
        self.refundId = refundId
    }

    private enum CodingKeys: String, CodingKey {
        case requestMeta = "request_meta"
        case refundId = "refund_id"
    }
}

/// Typed Inttegro request parameters.
public struct CancelScheduleRequest: Codable, Sendable, Equatable {
    public var scheduleId: String

    public init(
        scheduleId: String
    ) {
        self.scheduleId = scheduleId
    }

    private enum CodingKeys: String, CodingKey {
        case scheduleId = "schedule_id"
    }
}

/// Typed Inttegro request parameters.
public struct CancelUploadRequestRequest: Codable, Sendable, Equatable {
    public var canceledBy: FileActorInput?
    public var id: String

    public init(
        canceledBy: FileActorInput? = nil,
        id: String
    ) {
        self.canceledBy = canceledBy
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case canceledBy = "canceled_by"
        case id
    }
}

/// Typed Inttegro domain value.
public struct CatalogPrice: Codable, Sendable, Equatable {
    public var id: String
    public var label: String?
    public var about: String?
    public var active: Bool
    public var nominal: Amount
    public var productId: String?
    public var product: PriceEmbeddedProduct?
    public var createdAt: Date
    public var updatedAt: Date?
    public var archivedAt: Date?

    public init(
        id: String,
        label: String? = nil,
        about: String? = nil,
        active: Bool,
        nominal: Amount,
        productId: String? = nil,
        product: PriceEmbeddedProduct? = nil,
        createdAt: Date,
        updatedAt: Date? = nil,
        archivedAt: Date? = nil
    ) {
        self.id = id
        self.label = label
        self.about = about
        self.active = active
        self.nominal = nominal
        self.productId = productId
        self.product = product
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.archivedAt = archivedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case about
        case active
        case nominal
        case productId = "product_id"
        case product
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case archivedAt = "archived_at"
    }
}

/// Typed Inttegro request parameters.
public struct CatalogPriceParams: Codable, Sendable, Equatable {
    public var productId: String?
    public var label: String?
    public var about: String?
    public var amount: AmountParams

    public init(
        productId: String? = nil,
        label: String? = nil,
        about: String? = nil,
        amount: AmountParams
    ) {
        self.productId = productId
        self.label = label
        self.about = about
        self.amount = amount
    }

    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case label
        case about
        case amount
    }
}

/// Typed Inttegro request parameters.
public struct CatalogProductWithPriceDataInput: Codable, Sendable, Equatable {
    public var price: PriceParams
    public var productId: String
    public var quantity: Int

    public init(
        price: PriceParams,
        productId: String,
        quantity: Int
    ) {
        self.price = price
        self.productId = productId
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case price
        case productId = "product_id"
        case quantity
    }
}

/// Typed Inttegro request parameters.
public struct CatalogProductWithPriceReferenceInput: Codable, Sendable, Equatable {
    public var priceId: String
    public var productId: String
    public var quantity: Int

    public init(
        priceId: String,
        productId: String,
        quantity: Int
    ) {
        self.priceId = priceId
        self.productId = productId
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case priceId = "price_id"
        case productId = "product_id"
        case quantity
    }
}

/// Typed Inttegro domain value.
public struct Chime: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var customData: CustomData?
    public var customerId: String?
    public var email: ChimeEmailMessage?
    public var fullMessage: String
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipient: ChimeRecipient
    public var senderId: String
    public var transmission: ChimeTransmission?

    public init(
        createdAt: Date,
        customData: CustomData? = nil,
        customerId: String? = nil,
        email: ChimeEmailMessage? = nil,
        fullMessage: String,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipient: ChimeRecipient,
        senderId: String,
        transmission: ChimeTransmission? = nil
    ) {
        self.createdAt = createdAt
        self.customData = customData
        self.customerId = customerId
        self.email = email
        self.fullMessage = fullMessage
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipient = recipient
        self.senderId = senderId
        self.transmission = transmission
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case customData = "custom_data"
        case customerId = "customer_id"
        case email
        case fullMessage = "full_message"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipient
        case senderId = "sender_id"
        case transmission
    }
}

/// Typed Inttegro domain value.
public struct ChimeEmailEvent: Codable, Sendable, Equatable {
    public var bounceSubType: String?
    public var bounceType: String?
    public var complaintSubType: String?
    public var id: String
    public var occurredAt: Date
    public var provider: String
    public var providerMessageId: String
    public var reason: String?
    public var reasonCode: String?
    public var recipient: String?
    public var source: String?
    public var suppressRecipient: Bool?
    public var temporary: Bool?
    public var type: String

    public init(
        bounceSubType: String? = nil,
        bounceType: String? = nil,
        complaintSubType: String? = nil,
        id: String,
        occurredAt: Date,
        provider: String,
        providerMessageId: String,
        reason: String? = nil,
        reasonCode: String? = nil,
        recipient: String? = nil,
        source: String? = nil,
        suppressRecipient: Bool? = nil,
        temporary: Bool? = nil,
        type: String
    ) {
        self.bounceSubType = bounceSubType
        self.bounceType = bounceType
        self.complaintSubType = complaintSubType
        self.id = id
        self.occurredAt = occurredAt
        self.provider = provider
        self.providerMessageId = providerMessageId
        self.reason = reason
        self.reasonCode = reasonCode
        self.recipient = recipient
        self.source = source
        self.suppressRecipient = suppressRecipient
        self.temporary = temporary
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case bounceSubType = "bounce_sub_type"
        case bounceType = "bounce_type"
        case complaintSubType = "complaint_sub_type"
        case id
        case occurredAt = "occurred_at"
        case provider
        case providerMessageId = "provider_message_id"
        case reason
        case reasonCode = "reason_code"
        case recipient
        case source
        case suppressRecipient = "suppress_recipient"
        case temporary
        case type
    }
}

/// Typed Inttegro domain value.
public struct ChimeEmailMailbox: Codable, Sendable, Equatable {
    public var name: String?
    public var address: String?

    public init(
        name: String? = nil,
        address: String? = nil
    ) {
        self.name = name
        self.address = address
    }
}

/// Typed Inttegro request parameters.
public struct ChimeEmailMailboxInput: Codable, Sendable, Equatable {
    public var name: String?
    public var address: String?

    public init(
        name: String? = nil,
        address: String? = nil
    ) {
        self.name = name
        self.address = address
    }
}

/// Typed Inttegro domain value.
public struct ChimeEmailMessage: Codable, Sendable, Equatable {
    public var subject: String?
    public var text: String?
    public var html: String?
    public var from: ChimeEmailMailbox?
    public var replyTo: ChimeEmailMailbox?
    public var headers: MessageHeaders?
    public var safety: ChimeEmailSafetyResult?
    public var schema: ChimeEmailSchemaMarkup?

    public init(
        subject: String? = nil,
        text: String? = nil,
        html: String? = nil,
        from: ChimeEmailMailbox? = nil,
        replyTo: ChimeEmailMailbox? = nil,
        headers: MessageHeaders? = nil,
        safety: ChimeEmailSafetyResult? = nil,
        schema: ChimeEmailSchemaMarkup? = nil
    ) {
        self.subject = subject
        self.text = text
        self.html = html
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
        self.safety = safety
        self.schema = schema
    }

    private enum CodingKeys: String, CodingKey {
        case subject
        case text
        case html
        case from
        case replyTo = "reply_to"
        case headers
        case safety
        case schema
    }
}

/// Typed Inttegro request parameters.
public struct ChimeEmailMessageInput: Codable, Sendable, Equatable {
    public var html: String?
    public var replyTo: String?
    public var headers: MessageHeaders?
    public var subject: String
    public var text: String
    public var from: ChimeEmailMailboxInput

    public init(
        html: String? = nil,
        replyTo: String? = nil,
        headers: MessageHeaders? = nil,
        subject: String,
        text: String,
        from: ChimeEmailMailboxInput
    ) {
        self.html = html
        self.replyTo = replyTo
        self.headers = headers
        self.subject = subject
        self.text = text
        self.from = from
    }

    private enum CodingKeys: String, CodingKey {
        case html
        case replyTo = "reply_to"
        case headers
        case subject
        case text
        case from
    }
}

/// Typed Inttegro domain value.
public struct ChimeEmailSafetyResult: Codable, Sendable, Equatable {
    public var status: ContentSafetyStatus?
    public var reasonCodes: [String]?
    public var sanitizedHtml: String?
    public var normalizedText: String?
    public var links: [ChimeEmailScannedLink]?
    public var scanner: String?
    public var contentHash: String?
    public var quarantineNotes: String?

    public init(
        status: ContentSafetyStatus? = nil,
        reasonCodes: [String]? = nil,
        sanitizedHtml: String? = nil,
        normalizedText: String? = nil,
        links: [ChimeEmailScannedLink]? = nil,
        scanner: String? = nil,
        contentHash: String? = nil,
        quarantineNotes: String? = nil
    ) {
        self.status = status
        self.reasonCodes = reasonCodes
        self.sanitizedHtml = sanitizedHtml
        self.normalizedText = normalizedText
        self.links = links
        self.scanner = scanner
        self.contentHash = contentHash
        self.quarantineNotes = quarantineNotes
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case reasonCodes = "reason_codes"
        case sanitizedHtml = "sanitized_html"
        case normalizedText = "normalized_text"
        case links
        case scanner
        case contentHash = "content_hash"
        case quarantineNotes = "quarantine_notes"
    }
}

/// Typed Inttegro domain value.
public struct ChimeEmailScannedLink: Codable, Sendable, Equatable {
    public var raw: String?
    public var scheme: String?
    public var host: String?
    public var status: ContentSafetyStatus?
    public var reason: String?

    public init(
        raw: String? = nil,
        scheme: String? = nil,
        host: String? = nil,
        status: ContentSafetyStatus? = nil,
        reason: String? = nil
    ) {
        self.raw = raw
        self.scheme = scheme
        self.host = host
        self.status = status
        self.reason = reason
    }
}

/// Typed Inttegro domain value.
public struct ChimeEmailSchemaMarkup: Codable, Sendable, Equatable {
    public var kind: ChimeEmailSchemaKind?
    public var jsonLd: JSONData?

    public init(
        kind: ChimeEmailSchemaKind? = nil,
        jsonLd: JSONData? = nil
    ) {
        self.kind = kind
        self.jsonLd = jsonLd
    }

    private enum CodingKeys: String, CodingKey {
        case kind
        case jsonLd = "json_ld"
    }
}

/// Typed Inttegro request parameters.
public struct ChimeInlineRecipientInputVariant1: Codable, Sendable, Equatable {
    public var name: String?
    public var phone: ChimeInlineRecipientInputVariant1Phone
    public var type: ChimeRecipientType

    public init(
        name: String? = nil,
        phone: ChimeInlineRecipientInputVariant1Phone,
        type: ChimeRecipientType
    ) {
        self.name = name
        self.phone = phone
        self.type = type
    }
}

/// Typed Inttegro request parameters.
public struct ChimeInlineRecipientInputVariant1Phone: Codable, Sendable, Equatable {
    public var number: String

    public init(
        number: String
    ) {
        self.number = number
    }
}

/// Typed Inttegro request parameters.
public struct ChimeInlineRecipientInputVariant2: Codable, Sendable, Equatable {
    public var name: String?
    public var email: ChimeInlineRecipientInputVariant2Email
    public var type: ChimeRecipientType

    public init(
        name: String? = nil,
        email: ChimeInlineRecipientInputVariant2Email,
        type: ChimeRecipientType
    ) {
        self.name = name
        self.email = email
        self.type = type
    }
}

/// Typed Inttegro request parameters.
public struct ChimeInlineRecipientInputVariant2Email: Codable, Sendable, Equatable {
    public var address: String

    public init(
        address: String
    ) {
        self.address = address
    }
}

/// Typed Inttegro domain value.
public struct ChimePage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var chimes: [Chime]

    public init(
        number: Int,
        size: Int,
        chimes: [Chime]
    ) {
        self.number = number
        self.size = size
        self.chimes = chimes
    }
}

/// Typed Inttegro domain value.
public struct ChimeRecipient: Codable, Sendable, Equatable {
    public var type: ChimeRecipientType
    public var name: String?
    public var phone: ChimeRecipientPhone?
    public var email: ChimeRecipientEmail?

    public init(
        type: ChimeRecipientType,
        name: String? = nil,
        phone: ChimeRecipientPhone? = nil,
        email: ChimeRecipientEmail? = nil
    ) {
        self.type = type
        self.name = name
        self.phone = phone
        self.email = email
    }
}

/// Typed Inttegro domain value.
public struct ChimeRecipientEmail: Codable, Sendable, Equatable {
    public var address: String

    public init(
        address: String
    ) {
        self.address = address
    }
}

/// Typed Inttegro domain value.
public struct ChimeRecipientPhone: Codable, Sendable, Equatable {
    public var number: String

    public init(
        number: String
    ) {
        self.number = number
    }
}

/// Typed Inttegro request parameters.
public struct ChimeSavedCustomerRecipientInput: Codable, Sendable, Equatable {
    public var customerId: String
    public var transport: ChimeTransport

    public init(
        customerId: String,
        transport: ChimeTransport
    ) {
        self.customerId = customerId
        self.transport = transport
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
        case transport
    }
}

/// Typed Inttegro domain value.
public struct ChimeTransmission: Codable, Sendable, Equatable {
    public var address: String
    public var createdAt: Date
    public var deliveredAt: Date?
    public var emailEvents: [ChimeEmailEvent]?
    public var emailFailureCode: String?
    public var emailFailureReason: String?
    public var emailStatus: String?
    public var error: String?
    public var failedAt: Date?
    public var gateway: String
    public var gatewayMessageId: String?
    public var id: String
    public var initializedAt: Date
    public var lastEmailEventAt: Date?
    public var mechanism: ChimeTransport
    public var sentAt: Date?
    public var sentVia: ChimeTransport?
    public var status: String
    public var suppressedAt: Date?
    public var suppressionReason: String?

    public init(
        address: String,
        createdAt: Date,
        deliveredAt: Date? = nil,
        emailEvents: [ChimeEmailEvent]? = nil,
        emailFailureCode: String? = nil,
        emailFailureReason: String? = nil,
        emailStatus: String? = nil,
        error: String? = nil,
        failedAt: Date? = nil,
        gateway: String,
        gatewayMessageId: String? = nil,
        id: String,
        initializedAt: Date,
        lastEmailEventAt: Date? = nil,
        mechanism: ChimeTransport,
        sentAt: Date? = nil,
        sentVia: ChimeTransport? = nil,
        status: String,
        suppressedAt: Date? = nil,
        suppressionReason: String? = nil
    ) {
        self.address = address
        self.createdAt = createdAt
        self.deliveredAt = deliveredAt
        self.emailEvents = emailEvents
        self.emailFailureCode = emailFailureCode
        self.emailFailureReason = emailFailureReason
        self.emailStatus = emailStatus
        self.error = error
        self.failedAt = failedAt
        self.gateway = gateway
        self.gatewayMessageId = gatewayMessageId
        self.id = id
        self.initializedAt = initializedAt
        self.lastEmailEventAt = lastEmailEventAt
        self.mechanism = mechanism
        self.sentAt = sentAt
        self.sentVia = sentVia
        self.status = status
        self.suppressedAt = suppressedAt
        self.suppressionReason = suppressionReason
    }

    private enum CodingKeys: String, CodingKey {
        case address
        case createdAt = "created_at"
        case deliveredAt = "delivered_at"
        case emailEvents = "email_events"
        case emailFailureCode = "email_failure_code"
        case emailFailureReason = "email_failure_reason"
        case emailStatus = "email_status"
        case error
        case failedAt = "failed_at"
        case gateway
        case gatewayMessageId = "gateway_message_id"
        case id
        case initializedAt = "initialized_at"
        case lastEmailEventAt = "last_email_event_at"
        case mechanism
        case sentAt = "sent_at"
        case sentVia = "sent_via"
        case status
        case suppressedAt = "suppressed_at"
        case suppressionReason = "suppression_reason"
    }
}

/// Typed Inttegro request parameters.
public struct CompleteOrderRequest: Codable, Sendable, Equatable {
    public var paidOutOfBand: Bool?
    public var orderId: String

    public init(
        paidOutOfBand: Bool? = nil,
        orderId: String
    ) {
        self.paidOutOfBand = paidOutOfBand
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case paidOutOfBand = "paid_out_of_band"
        case orderId = "order_id"
    }
}

/// Typed Inttegro request parameters.
public struct ConfirmPaymentRequest: Codable, Sendable, Equatable {
    public var orderId: String
    public var paymentId: String
    public var confirmationId: String
    public var token: String

    public init(
        orderId: String,
        paymentId: String,
        confirmationId: String,
        token: String
    ) {
        self.orderId = orderId
        self.paymentId = paymentId
        self.confirmationId = confirmationId
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
        case paymentId = "payment_id"
        case confirmationId = "confirmation_id"
        case token
    }
}

/// Typed Inttegro domain value.
public struct CountryBank: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var swiftCode: String?
    public var sortCodePrefix: String?
    public var branches: [CountryBankBranch]

    public init(
        id: String,
        name: String,
        swiftCode: String? = nil,
        sortCodePrefix: String? = nil,
        branches: [CountryBankBranch]
    ) {
        self.id = id
        self.name = name
        self.swiftCode = swiftCode
        self.sortCodePrefix = sortCodePrefix
        self.branches = branches
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case swiftCode = "swift_code"
        case sortCodePrefix = "sort_code_prefix"
        case branches
    }
}

/// Typed Inttegro domain value.
public struct CountryBankBranch: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var sortCode: String

    public init(
        id: String,
        name: String,
        sortCode: String
    ) {
        self.id = id
        self.name = name
        self.sortCode = sortCode
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case sortCode = "sort_code"
    }
}

/// Typed Inttegro domain value.
public struct CountryBankDirectory: Codable, Sendable, Equatable {
    public var bankAccountType: String
    public var codeScheme: String
    public var items: [CountryBank]

    public init(
        bankAccountType: String,
        codeScheme: String,
        items: [CountryBank]
    ) {
        self.bankAccountType = bankAccountType
        self.codeScheme = codeScheme
        self.items = items
    }

    private enum CodingKeys: String, CodingKey {
        case bankAccountType = "bank_account_type"
        case codeScheme = "code_scheme"
        case items
    }
}

/// Typed Inttegro domain value.
public struct CountrySpecification: Codable, Sendable, Equatable {
    public var countryCode: String
    public var countryName: String
    public var currencies: [String]
    public var paymentMethods: [String]
    public var payoutSchedules: [String]
    public var btAgingSpecs: [String]
    public var legalEntityTypes: [String]
    public var financialAccountTypes: [String]
    public var idDocumentTypes: [String]
    public var banks: CountryBankDirectory?

    public init(
        countryCode: String,
        countryName: String,
        currencies: [String],
        paymentMethods: [String],
        payoutSchedules: [String],
        btAgingSpecs: [String],
        legalEntityTypes: [String],
        financialAccountTypes: [String],
        idDocumentTypes: [String],
        banks: CountryBankDirectory? = nil
    ) {
        self.countryCode = countryCode
        self.countryName = countryName
        self.currencies = currencies
        self.paymentMethods = paymentMethods
        self.payoutSchedules = payoutSchedules
        self.btAgingSpecs = btAgingSpecs
        self.legalEntityTypes = legalEntityTypes
        self.financialAccountTypes = financialAccountTypes
        self.idDocumentTypes = idDocumentTypes
        self.banks = banks
    }

    private enum CodingKeys: String, CodingKey {
        case countryCode = "country_code"
        case countryName = "country_name"
        case currencies
        case paymentMethods = "payment_methods"
        case payoutSchedules = "payout_schedules"
        case btAgingSpecs = "bt_aging_specs"
        case legalEntityTypes = "legal_entity_types"
        case financialAccountTypes = "financial_account_types"
        case idDocumentTypes = "id_document_types"
        case banks
    }
}

/// Typed Inttegro request parameters.
public struct CreateApplicationRequest: Codable, Sendable, Equatable {
    public var alias: String?
    public var description: String?
    public var legalEntityType: String?
    public var placementParentApplicationId: String?
    public var relationshipPolicy: CreateApplicationRequestRelationshipPolicy?
    public var name: String

    public init(
        alias: String? = nil,
        description: String? = nil,
        legalEntityType: String? = nil,
        placementParentApplicationId: String? = nil,
        relationshipPolicy: CreateApplicationRequestRelationshipPolicy? = nil,
        name: String
    ) {
        self.alias = alias
        self.description = description
        self.legalEntityType = legalEntityType
        self.placementParentApplicationId = placementParentApplicationId
        self.relationshipPolicy = relationshipPolicy
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case alias
        case description
        case legalEntityType = "legal_entity_type"
        case placementParentApplicationId = "placement_parent_application_id"
        case relationshipPolicy = "relationship_policy"
        case name
    }
}

/// Typed Inttegro request parameters.
public struct CreateApplicationRequestRelationshipPolicy: Codable, Sendable, Equatable {
    public var childStanding: String?
    public var management: AppManagementRole?
    public var credentials: AppCredentialOwner?

    public init(
        childStanding: String? = nil,
        management: AppManagementRole? = nil,
        credentials: AppCredentialOwner? = nil
    ) {
        self.childStanding = childStanding
        self.management = management
        self.credentials = credentials
    }

    private enum CodingKeys: String, CodingKey {
        case childStanding = "child_standing"
        case management
        case credentials
    }
}

/// Typed Inttegro request parameters.
public struct CreateCustomerRequest: Codable, Sendable, Equatable {
    public var billingAddress: CustomerAddressInput?
    public var customData: CustomDataInput?
    public var emailAddress: String?
    public var phoneNumber: String?
    public var reference: String?
    public var shippingAddress: CustomerAddressInput?
    public var title: String?
    public var name: String

    public init(
        billingAddress: CustomerAddressInput? = nil,
        customData: CustomDataInput? = nil,
        emailAddress: String? = nil,
        phoneNumber: String? = nil,
        reference: String? = nil,
        shippingAddress: CustomerAddressInput? = nil,
        title: String? = nil,
        name: String
    ) {
        self.billingAddress = billingAddress
        self.customData = customData
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
        self.reference = reference
        self.shippingAddress = shippingAddress
        self.title = title
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case billingAddress = "billing_address"
        case customData = "custom_data"
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
        case reference
        case shippingAddress = "shipping_address"
        case title
        case name
    }
}

/// Typed Inttegro request parameters.
public struct CreateEmailMessageTemplateRequest: Codable, Sendable, Equatable {
    public var about: String?
    public var attachments: [String]?
    public var locale: String?
    public var variables: [MessageTemplateVariableInput]?
    public var channel: MessageTemplateChannel
    public var email: MessageTemplateEmailContentInput
    public var name: String
    public var purpose: String

    public init(
        about: String? = nil,
        attachments: [String]? = nil,
        locale: String? = nil,
        variables: [MessageTemplateVariableInput]? = nil,
        channel: MessageTemplateChannel,
        email: MessageTemplateEmailContentInput,
        name: String,
        purpose: String
    ) {
        self.about = about
        self.attachments = attachments
        self.locale = locale
        self.variables = variables
        self.channel = channel
        self.email = email
        self.name = name
        self.purpose = purpose
    }
}

/// Typed Inttegro request parameters.
public struct CreateFileLinkRequest: Codable, Sendable, Equatable {
    public var delivery: FileLinkDeliveryInput?
    public var access: FileLinkAccessRequest?
    public var createdBy: FileActorInput?
    public var customData: CustomData?
    public var expiresAt: Date?
    public var fileId: String

    public init(
        delivery: FileLinkDeliveryInput? = nil,
        access: FileLinkAccessRequest? = nil,
        createdBy: FileActorInput? = nil,
        customData: CustomData? = nil,
        expiresAt: Date? = nil,
        fileId: String
    ) {
        self.delivery = delivery
        self.access = access
        self.createdBy = createdBy
        self.customData = customData
        self.expiresAt = expiresAt
        self.fileId = fileId
    }

    private enum CodingKeys: String, CodingKey {
        case delivery
        case access
        case createdBy = "created_by"
        case customData = "custom_data"
        case expiresAt = "expires_at"
        case fileId = "file_id"
    }
}

/// Typed Inttegro request parameters.
public struct CreateOrderExistingCustomerInput: Codable, Sendable, Equatable {
    public var paymentMethodId: String?
    public var paymentMethodData: PaymentMethodDataInput?
    public var receiptNumber: String?
    public var statementDescriptor: String?
    public var statementDescriptorPrefix: String?
    public var executePayment: Bool?
    public var finalize: Bool?
    public var requestMeta: CreateOrderExistingCustomerInputRequestMeta?
    public var checkoutSettings: CreateOrderExistingCustomerInputCheckoutSettings?
    public var invoiceSettings: InvoiceSettingsInput?
    public var payoutSettings: OrderPayoutSettingsRequest?
    public var customData: CustomData?
    public var billingDetails: BillingDetailsInput?
    public var shipping: ShippingInput?
    public var customerId: String
    public var lineItems: [LineItemInput]

    public init(
        paymentMethodId: String? = nil,
        paymentMethodData: PaymentMethodDataInput? = nil,
        receiptNumber: String? = nil,
        statementDescriptor: String? = nil,
        statementDescriptorPrefix: String? = nil,
        executePayment: Bool? = nil,
        finalize: Bool? = nil,
        requestMeta: CreateOrderExistingCustomerInputRequestMeta? = nil,
        checkoutSettings: CreateOrderExistingCustomerInputCheckoutSettings? = nil,
        invoiceSettings: InvoiceSettingsInput? = nil,
        payoutSettings: OrderPayoutSettingsRequest? = nil,
        customData: CustomData? = nil,
        billingDetails: BillingDetailsInput? = nil,
        shipping: ShippingInput? = nil,
        customerId: String,
        lineItems: [LineItemInput]
    ) {
        self.paymentMethodId = paymentMethodId
        self.paymentMethodData = paymentMethodData
        self.receiptNumber = receiptNumber
        self.statementDescriptor = statementDescriptor
        self.statementDescriptorPrefix = statementDescriptorPrefix
        self.executePayment = executePayment
        self.finalize = finalize
        self.requestMeta = requestMeta
        self.checkoutSettings = checkoutSettings
        self.invoiceSettings = invoiceSettings
        self.payoutSettings = payoutSettings
        self.customData = customData
        self.billingDetails = billingDetails
        self.shipping = shipping
        self.customerId = customerId
        self.lineItems = lineItems
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
        case paymentMethodData = "payment_method_data"
        case receiptNumber = "receipt_number"
        case statementDescriptor = "statement_descriptor"
        case statementDescriptorPrefix = "statement_descriptor_prefix"
        case executePayment = "execute_payment"
        case finalize
        case requestMeta = "request_meta"
        case checkoutSettings = "checkout_settings"
        case invoiceSettings = "invoice_settings"
        case payoutSettings = "payout_settings"
        case customData = "custom_data"
        case billingDetails = "billing_details"
        case shipping
        case customerId = "customer_id"
        case lineItems = "line_items"
    }
}

/// Typed Inttegro request parameters.
public struct CreateOrderExistingCustomerInputCheckoutSettings: Codable, Sendable, Equatable {
    public var redirectUrl: String?
    public var cancelUrl: String?

    public init(
        redirectUrl: String? = nil,
        cancelUrl: String? = nil
    ) {
        self.redirectUrl = redirectUrl
        self.cancelUrl = cancelUrl
    }

    private enum CodingKeys: String, CodingKey {
        case redirectUrl = "redirect_url"
        case cancelUrl = "cancel_url"
    }
}

/// Typed Inttegro request parameters.
public struct CreateOrderExistingCustomerInputRequestMeta: Codable, Sendable, Equatable {
    public var idempotencyKey: String?

    public init(
        idempotencyKey: String? = nil
    ) {
        self.idempotencyKey = idempotencyKey
    }

    private enum CodingKeys: String, CodingKey {
        case idempotencyKey = "idempotency_key"
    }
}

/// Typed Inttegro request parameters.
public struct CreateOrderNewCustomerInput: Codable, Sendable, Equatable {
    public var number: String?
    public var receiptNumber: String?
    public var statementDescriptor: String?
    public var statementDescriptorPrefix: String?
    public var executePayment: Bool?
    public var finalize: Bool?
    public var requestMeta: CreateOrderNewCustomerInputRequestMeta?
    public var checkoutSettings: CreateOrderNewCustomerInputCheckoutSettings?
    public var invoiceSettings: InvoiceSettingsInput?
    public var payoutSettings: OrderPayoutSettingsRequest?
    public var customData: CustomData?
    public var billingDetails: BillingDetailsInput?
    public var shipping: ShippingInput?
    public var paymentMethodData: PaymentMethodDataInput?
    public var customerData: CustomerDataInput
    public var lineItems: [LineItemInput]

    public init(
        number: String? = nil,
        receiptNumber: String? = nil,
        statementDescriptor: String? = nil,
        statementDescriptorPrefix: String? = nil,
        executePayment: Bool? = nil,
        finalize: Bool? = nil,
        requestMeta: CreateOrderNewCustomerInputRequestMeta? = nil,
        checkoutSettings: CreateOrderNewCustomerInputCheckoutSettings? = nil,
        invoiceSettings: InvoiceSettingsInput? = nil,
        payoutSettings: OrderPayoutSettingsRequest? = nil,
        customData: CustomData? = nil,
        billingDetails: BillingDetailsInput? = nil,
        shipping: ShippingInput? = nil,
        paymentMethodData: PaymentMethodDataInput? = nil,
        customerData: CustomerDataInput,
        lineItems: [LineItemInput]
    ) {
        self.number = number
        self.receiptNumber = receiptNumber
        self.statementDescriptor = statementDescriptor
        self.statementDescriptorPrefix = statementDescriptorPrefix
        self.executePayment = executePayment
        self.finalize = finalize
        self.requestMeta = requestMeta
        self.checkoutSettings = checkoutSettings
        self.invoiceSettings = invoiceSettings
        self.payoutSettings = payoutSettings
        self.customData = customData
        self.billingDetails = billingDetails
        self.shipping = shipping
        self.paymentMethodData = paymentMethodData
        self.customerData = customerData
        self.lineItems = lineItems
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case receiptNumber = "receipt_number"
        case statementDescriptor = "statement_descriptor"
        case statementDescriptorPrefix = "statement_descriptor_prefix"
        case executePayment = "execute_payment"
        case finalize
        case requestMeta = "request_meta"
        case checkoutSettings = "checkout_settings"
        case invoiceSettings = "invoice_settings"
        case payoutSettings = "payout_settings"
        case customData = "custom_data"
        case billingDetails = "billing_details"
        case shipping
        case paymentMethodData = "payment_method_data"
        case customerData = "customer_data"
        case lineItems = "line_items"
    }
}

/// Typed Inttegro request parameters.
public struct CreateOrderNewCustomerInputCheckoutSettings: Codable, Sendable, Equatable {
    public var redirectUrl: String?
    public var cancelUrl: String?

    public init(
        redirectUrl: String? = nil,
        cancelUrl: String? = nil
    ) {
        self.redirectUrl = redirectUrl
        self.cancelUrl = cancelUrl
    }

    private enum CodingKeys: String, CodingKey {
        case redirectUrl = "redirect_url"
        case cancelUrl = "cancel_url"
    }
}

/// Typed Inttegro request parameters.
public struct CreateOrderNewCustomerInputRequestMeta: Codable, Sendable, Equatable {
    public var idempotencyKey: String?

    public init(
        idempotencyKey: String? = nil
    ) {
        self.idempotencyKey = idempotencyKey
    }

    private enum CodingKeys: String, CodingKey {
        case idempotencyKey = "idempotency_key"
    }
}

/// Typed Inttegro request parameters.
public struct CreateProductRequest: Codable, Sendable, Equatable {
    public var reference: String?
    public var description: String?
    public var about: String?
    public var taxCode: String?
    public var category: String?
    public var shipment: ProductShipmentInput?
    public var dimensions: ProductDimensionsInput?
    public var unitDimension: String?
    public var media: ProductMediaInput?
    public var attributes: [ProductAttributeInput]?
    public var publish: Bool?
    public var customData: CustomData?
    public var type: ProductType
    public var name: String

    public init(
        reference: String? = nil,
        description: String? = nil,
        about: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        shipment: ProductShipmentInput? = nil,
        dimensions: ProductDimensionsInput? = nil,
        unitDimension: String? = nil,
        media: ProductMediaInput? = nil,
        attributes: [ProductAttributeInput]? = nil,
        publish: Bool? = nil,
        customData: CustomData? = nil,
        type: ProductType,
        name: String
    ) {
        self.reference = reference
        self.description = description
        self.about = about
        self.taxCode = taxCode
        self.category = category
        self.shipment = shipment
        self.dimensions = dimensions
        self.unitDimension = unitDimension
        self.media = media
        self.attributes = attributes
        self.publish = publish
        self.customData = customData
        self.type = type
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case reference
        case description
        case about
        case taxCode = "tax_code"
        case category
        case shipment
        case dimensions
        case unitDimension = "unit_dimension"
        case media
        case attributes
        case publish
        case customData = "custom_data"
        case type
        case name
    }
}

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequest: Codable, Sendable, Equatable {
    public var product: CreatePurchaseIntentRequestProduct?
    public var productId: String?
    public var price: CreatePurchaseIntentRequestPrice?
    public var priceId: String?
    public var usage: CreatePurchaseIntentRequestUsage?
    public var expiresAt: Date?
    public var quantity: CreatePurchaseIntentRequestQuantity

    public init(
        product: CreatePurchaseIntentRequestProduct? = nil,
        productId: String? = nil,
        price: CreatePurchaseIntentRequestPrice? = nil,
        priceId: String? = nil,
        usage: CreatePurchaseIntentRequestUsage? = nil,
        expiresAt: Date? = nil,
        quantity: CreatePurchaseIntentRequestQuantity
    ) {
        self.product = product
        self.productId = productId
        self.price = price
        self.priceId = priceId
        self.usage = usage
        self.expiresAt = expiresAt
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case product
        case productId = "product_id"
        case price
        case priceId = "price_id"
        case usage
        case expiresAt = "expires_at"
        case quantity
    }
}

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestPrice: Codable, Sendable, Equatable {
    public var id: String?
    public var nominal: PriceParams?
    public var original: CreatePurchaseIntentRequestPriceOriginal?
    public var originalId: String?

    public init(
        id: String? = nil,
        nominal: PriceParams? = nil,
        original: CreatePurchaseIntentRequestPriceOriginal? = nil,
        originalId: String? = nil
    ) {
        self.id = id
        self.nominal = nominal
        self.original = original
        self.originalId = originalId
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case nominal
        case original
        case originalId = "original_id"
    }
}

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestPriceOriginal: Codable, Sendable, Equatable {
    public var id: String?
    public var nominal: PriceParams?

    public init(
        id: String? = nil,
        nominal: PriceParams? = nil
    ) {
        self.id = id
        self.nominal = nominal
    }
}

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestProduct: Codable, Sendable, Equatable {
    public var variantSetId: String?
    public var id: String

    public init(
        variantSetId: String? = nil,
        id: String
    ) {
        self.variantSetId = variantSetId
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case variantSetId = "variant_set_id"
        case id
    }
}

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestQuantity: Codable, Sendable, Equatable {
    public var max: Int?
    public var min: Int

    public init(
        max: Int? = nil,
        min: Int
    ) {
        self.max = max
        self.min = min
    }
}

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestUsage: Codable, Sendable, Equatable {
    public var singleUse: Bool?
    public var multiUse: Bool?

    public init(
        singleUse: Bool? = nil,
        multiUse: Bool? = nil
    ) {
        self.singleUse = singleUse
        self.multiUse = multiUse
    }

    private enum CodingKeys: String, CodingKey {
        case singleUse = "single_use"
        case multiUse = "multi_use"
    }
}

/// Typed Inttegro request parameters.
public struct CreateRefundLineItemInput: Codable, Sendable, Equatable {
    public var reason: RefundReason?
    public var reasonDetails: String?
    public var orderLineItemId: String
    public var refundAmount: AmountParams

    public init(
        reason: RefundReason? = nil,
        reasonDetails: String? = nil,
        orderLineItemId: String,
        refundAmount: AmountParams
    ) {
        self.reason = reason
        self.reasonDetails = reasonDetails
        self.orderLineItemId = orderLineItemId
        self.refundAmount = refundAmount
    }

    private enum CodingKeys: String, CodingKey {
        case reason
        case reasonDetails = "reason_details"
        case orderLineItemId = "order_line_item_id"
        case refundAmount = "refund_amount"
    }
}

/// Typed Inttegro request parameters.
public struct CreateRefundRequest: Codable, Sendable, Equatable {
    public var customData: CustomData?
    public var reasonDetails: String?
    public var reference: String?
    public var requestMeta: RefundRequestMetaInput?
    public var lineItems: [CreateRefundLineItemInput]
    public var orderId: String
    public var reason: RefundReason

    public init(
        customData: CustomData? = nil,
        reasonDetails: String? = nil,
        reference: String? = nil,
        requestMeta: RefundRequestMetaInput? = nil,
        lineItems: [CreateRefundLineItemInput],
        orderId: String,
        reason: RefundReason
    ) {
        self.customData = customData
        self.reasonDetails = reasonDetails
        self.reference = reference
        self.requestMeta = requestMeta
        self.lineItems = lineItems
        self.orderId = orderId
        self.reason = reason
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case reasonDetails = "reason_details"
        case reference
        case requestMeta = "request_meta"
        case lineItems = "line_items"
        case orderId = "order_id"
        case reason
    }
}

/// Typed Inttegro request parameters.
public struct CreateSMSMessageTemplateRequest: Codable, Sendable, Equatable {
    public var about: String?
    public var locale: String?
    public var variables: [MessageTemplateVariableInput]?
    public var channel: MessageTemplateChannel
    public var name: String
    public var purpose: String
    public var sms: MessageTemplateSMSContentInput

    public init(
        about: String? = nil,
        locale: String? = nil,
        variables: [MessageTemplateVariableInput]? = nil,
        channel: MessageTemplateChannel,
        name: String,
        purpose: String,
        sms: MessageTemplateSMSContentInput
    ) {
        self.about = about
        self.locale = locale
        self.variables = variables
        self.channel = channel
        self.name = name
        self.purpose = purpose
        self.sms = sms
    }
}

/// Typed Inttegro request parameters.
public struct CreateUploadRequestRequest: Codable, Sendable, Equatable {
    public var constraints: UploadRequestConstraintsInput?
    public var display: UploadRequestDisplayInput?
    public var subject: FilePartyInput?
    public var recipient: FilePartyInput?
    public var resource: FileResourceInput?
    public var requester: FileActorInput?
    public var attempts: UploadRequestAttemptsRequest?
    public var customData: CustomData?
    public var expiresAt: Date?
    public var purpose: String

    public init(
        constraints: UploadRequestConstraintsInput? = nil,
        display: UploadRequestDisplayInput? = nil,
        subject: FilePartyInput? = nil,
        recipient: FilePartyInput? = nil,
        resource: FileResourceInput? = nil,
        requester: FileActorInput? = nil,
        attempts: UploadRequestAttemptsRequest? = nil,
        customData: CustomData? = nil,
        expiresAt: Date? = nil,
        purpose: String
    ) {
        self.constraints = constraints
        self.display = display
        self.subject = subject
        self.recipient = recipient
        self.resource = resource
        self.requester = requester
        self.attempts = attempts
        self.customData = customData
        self.expiresAt = expiresAt
        self.purpose = purpose
    }

    private enum CodingKeys: String, CodingKey {
        case constraints
        case display
        case subject
        case recipient
        case resource
        case requester
        case attempts
        case customData = "custom_data"
        case expiresAt = "expires_at"
        case purpose
    }
}

/// Typed Inttegro domain value.
public struct CurrencyBalanceSnapshot: Codable, Sendable, Equatable {
    public var available: BalanceValue
    public var includesTransactionsBefore: Date
    public var pending: BalanceValue
    public var refund: CurrencyBalanceSnapshotRefund
    public var reserved: CurrencyBalanceSnapshotReserved

    public init(
        available: BalanceValue,
        includesTransactionsBefore: Date,
        pending: BalanceValue,
        refund: CurrencyBalanceSnapshotRefund,
        reserved: CurrencyBalanceSnapshotReserved
    ) {
        self.available = available
        self.includesTransactionsBefore = includesTransactionsBefore
        self.pending = pending
        self.refund = refund
        self.reserved = reserved
    }

    private enum CodingKeys: String, CodingKey {
        case available
        case includesTransactionsBefore = "includes_transactions_before"
        case pending
        case refund
        case reserved
    }
}

/// Typed Inttegro domain value.
public struct CurrencyBalanceSnapshotRefund: Codable, Sendable, Equatable {
    public var amount: Int

    public init(
        amount: Int
    ) {
        self.amount = amount
    }
}

/// Typed Inttegro domain value.
public struct CurrencyBalanceSnapshotReserved: Codable, Sendable, Equatable {
    public var amount: Int

    public init(
        amount: Int
    ) {
        self.amount = amount
    }
}

/// Typed Inttegro domain value.
public struct Customer: Codable, Sendable, Equatable {
    public var balance: CustomerBalance
    public var billingAddress: CustomerAddress?
    public var createdAt: Date
    public var customData: CustomData?
    public var emailAddress: String?
    public var guest: Bool
    public var id: String
    public var name: String
    public var phoneNumber: String?
    public var reference: String?
    public var shippingAddress: CustomerAddress?
    public var suffix: String?
    public var title: String?
    public var updatedAt: Date?

    public init(
        balance: CustomerBalance,
        billingAddress: CustomerAddress? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        emailAddress: String? = nil,
        guest: Bool,
        id: String,
        name: String,
        phoneNumber: String? = nil,
        reference: String? = nil,
        shippingAddress: CustomerAddress? = nil,
        suffix: String? = nil,
        title: String? = nil,
        updatedAt: Date? = nil
    ) {
        self.balance = balance
        self.billingAddress = billingAddress
        self.createdAt = createdAt
        self.customData = customData
        self.emailAddress = emailAddress
        self.guest = guest
        self.id = id
        self.name = name
        self.phoneNumber = phoneNumber
        self.reference = reference
        self.shippingAddress = shippingAddress
        self.suffix = suffix
        self.title = title
        self.updatedAt = updatedAt
    }

    private enum CodingKeys: String, CodingKey {
        case balance
        case billingAddress = "billing_address"
        case createdAt = "created_at"
        case customData = "custom_data"
        case emailAddress = "email_address"
        case guest
        case id
        case name
        case phoneNumber = "phone_number"
        case reference
        case shippingAddress = "shipping_address"
        case suffix
        case title
        case updatedAt = "updated_at"
    }
}

/// Typed Inttegro domain value.
public struct CustomerAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var country: String
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phoneNumber: String?
    public var postCode: String?
    public var region: String?

    public init(
        city: String? = nil,
        country: String,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        postCode: String? = nil,
        region: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phoneNumber = phoneNumber
        self.postCode = postCode
        self.region = region
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case country
        case line1
        case line2
        case name
        case phoneNumber = "phone_number"
        case postCode = "post_code"
        case region
    }
}

/// Typed Inttegro request parameters.
public struct CustomerAddressInput: Codable, Sendable, Equatable {
    public var city: String?
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phoneNumber: String?
    public var postCode: String?
    public var region: String?
    public var country: String

    public init(
        city: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        postCode: String? = nil,
        region: String? = nil,
        country: String
    ) {
        self.city = city
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phoneNumber = phoneNumber
        self.postCode = postCode
        self.region = region
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case line1
        case line2
        case name
        case phoneNumber = "phone_number"
        case postCode = "post_code"
        case region
        case country
    }
}

/// Typed Inttegro domain value.
public struct CustomerBalanceValue: Codable, Sendable, Equatable {
    public var asOf: Date
    public var available: Amount

    public init(
        asOf: Date,
        available: Amount
    ) {
        self.asOf = asOf
        self.available = available
    }

    private enum CodingKeys: String, CodingKey {
        case asOf = "as_of"
        case available
    }
}

/// Typed Inttegro request parameters.
public struct CustomerDataInput: Codable, Sendable, Equatable {
    public var reference: String?
    public var customData: CustomDataInput?
    public var name: String
    public var emailAddress: String
    public var phoneNumber: String

    public init(
        reference: String? = nil,
        customData: CustomDataInput? = nil,
        name: String,
        emailAddress: String,
        phoneNumber: String
    ) {
        self.reference = reference
        self.customData = customData
        self.name = name
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
    }

    private enum CodingKeys: String, CodingKey {
        case reference
        case customData = "custom_data"
        case name
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
    }
}

/// Typed Inttegro domain value.
public struct CustomerPage: Codable, Sendable, Equatable {
    public var customers: [Customer]
    public var number: Int
    public var size: Int

    public init(
        customers: [Customer],
        number: Int,
        size: Int
    ) {
        self.customers = customers
        self.number = number
        self.size = size
    }
}

/// Typed Inttegro request parameters.
public struct DeleteFileRequest: Codable, Sendable, Equatable {
    public var fileId: String

    public init(
        fileId: String
    ) {
        self.fileId = fileId
    }

    private enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
    }
}

/// Typed Inttegro request parameters.
public struct DestroySecretKeyRequest: Codable, Sendable, Equatable {
    public var secretKeyId: String

    public init(
        secretKeyId: String
    ) {
        self.secretKeyId = secretKeyId
    }

    private enum CodingKeys: String, CodingKey {
        case secretKeyId = "secret_key_id"
    }
}

/// Typed Inttegro request parameters.
public struct DisableAutomaticPayoutsRequest: Codable, Sendable, Equatable {
    public init() {}
}

/// Typed Inttegro request parameters.
public struct DisactivatePaymentMethodRequest: Codable, Sendable, Equatable {
    public var paymentMethodId: String

    public init(
        paymentMethodId: String
    ) {
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
    }
}

/// Typed Inttegro request parameters.
public struct EnableAutomaticPayoutsRequest: Codable, Sendable, Equatable {
    public init() {}
}

/// Typed Inttegro domain value.
public struct Error: Codable, Sendable, Equatable {
    public var message: String?
    public var fixCode: String?
    public var detail: String?
    public var cause: String?
    public var type: String
    public var code: String
    public var url: String

    public init(
        message: String? = nil,
        fixCode: String? = nil,
        detail: String? = nil,
        cause: String? = nil,
        type: String,
        code: String,
        url: String
    ) {
        self.message = message
        self.fixCode = fixCode
        self.detail = detail
        self.cause = cause
        self.type = type
        self.code = code
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case message
        case fixCode = "fix_code"
        case detail
        case cause
        case type
        case code
        case url
    }
}

/// Typed Inttegro request parameters.
public struct FeeDetailsInput: Codable, Sendable, Equatable {
    public var id: String?
    public var label: String?
    public var taxCode: String?
    public var description: String?
    public var customData: CustomDataInput?
    public var amount: AmountParams

    public init(
        id: String? = nil,
        label: String? = nil,
        taxCode: String? = nil,
        description: String? = nil,
        customData: CustomDataInput? = nil,
        amount: AmountParams
    ) {
        self.id = id
        self.label = label
        self.taxCode = taxCode
        self.description = description
        self.customData = customData
        self.amount = amount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case taxCode = "tax_code"
        case description
        case customData = "custom_data"
        case amount
    }
}

/// Typed Inttegro request parameters.
public struct FeeLineItemInput: Codable, Sendable, Equatable {
    public var type: LineItemType
    public var fee: FeeDetailsInput

    public init(
        type: LineItemType,
        fee: FeeDetailsInput
    ) {
        self.type = type
        self.fee = fee
    }
}

/// Typed Inttegro domain value.
public struct File: Codable, Sendable, Equatable {
    public var id: String
    public var purpose: String
    public var status: FileStatus
    public var scanStatus: FileScanStatus
    public var name: String?
    public var filename: String?
    public var contentType: String
    public var size: Int
    public var checksumSha256: String
    public var createdBy: FileActor
    public var source: FileSource
    public var media: FileMedia?
    public var storage: PublicFileStorage
    public var delivery: FileDeliveryDetails?
    public var latestError: FileLatestError?
    public var customData: CustomData?
    public var metadata: FileMetadata?
    public var createdAt: Date
    public var updatedAt: Date
    public var availableAt: Date?
    public var expiresAt: Date?

    public init(
        id: String,
        purpose: String,
        status: FileStatus,
        scanStatus: FileScanStatus,
        name: String? = nil,
        filename: String? = nil,
        contentType: String,
        size: Int,
        checksumSha256: String,
        createdBy: FileActor,
        source: FileSource,
        media: FileMedia? = nil,
        storage: PublicFileStorage,
        delivery: FileDeliveryDetails? = nil,
        latestError: FileLatestError? = nil,
        customData: CustomData? = nil,
        metadata: FileMetadata? = nil,
        createdAt: Date,
        updatedAt: Date,
        availableAt: Date? = nil,
        expiresAt: Date? = nil
    ) {
        self.id = id
        self.purpose = purpose
        self.status = status
        self.scanStatus = scanStatus
        self.name = name
        self.filename = filename
        self.contentType = contentType
        self.size = size
        self.checksumSha256 = checksumSha256
        self.createdBy = createdBy
        self.source = source
        self.media = media
        self.storage = storage
        self.delivery = delivery
        self.latestError = latestError
        self.customData = customData
        self.metadata = metadata
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.availableAt = availableAt
        self.expiresAt = expiresAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case purpose
        case status
        case scanStatus = "scan_status"
        case name
        case filename
        case contentType = "content_type"
        case size
        case checksumSha256 = "checksum_sha256"
        case createdBy = "created_by"
        case source
        case media
        case storage
        case delivery
        case latestError = "latest_error"
        case customData = "custom_data"
        case metadata
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case availableAt = "available_at"
        case expiresAt = "expires_at"
    }
}

/// Typed Inttegro domain value.
public struct FileActor: Codable, Sendable, Equatable {
    public var type: String
    public var id: String?
    public var name: String?
    public var email: String?

    public init(
        type: String,
        id: String? = nil,
        name: String? = nil,
        email: String? = nil
    ) {
        self.type = type
        self.id = id
        self.name = name
        self.email = email
    }
}

/// Typed Inttegro request parameters.
public struct FileActorInput: Codable, Sendable, Equatable {
    public var email: String?
    public var id: String?
    public var name: String?
    public var type: String?

    public init(
        email: String? = nil,
        id: String? = nil,
        name: String? = nil,
        type: String? = nil
    ) {
        self.email = email
        self.id = id
        self.name = name
        self.type = type
    }
}

/// Typed Inttegro request parameters.
public struct FileContentsRequest: Codable, Sendable, Equatable {
    public var disposition: FileDisposition?
    public var delivery: FileDelivery?
    public var fileId: String

    public init(
        disposition: FileDisposition? = nil,
        delivery: FileDelivery? = nil,
        fileId: String
    ) {
        self.disposition = disposition
        self.delivery = delivery
        self.fileId = fileId
    }

    private enum CodingKeys: String, CodingKey {
        case disposition
        case delivery
        case fileId = "file_id"
    }
}

/// Typed Inttegro domain value.
public struct FileDeliveryDetails: Codable, Sendable, Equatable {
    public var publicUrl: String?
    public var cacheControl: String?
    public var contentType: String?

    public init(
        publicUrl: String? = nil,
        cacheControl: String? = nil,
        contentType: String? = nil
    ) {
        self.publicUrl = publicUrl
        self.cacheControl = cacheControl
        self.contentType = contentType
    }

    private enum CodingKeys: String, CodingKey {
        case publicUrl = "public_url"
        case cacheControl = "cache_control"
        case contentType = "content_type"
    }
}

/// Typed Inttegro domain value.
public struct FileLatestError: Codable, Sendable, Equatable {
    public var code: String?
    public var message: String?
    public var retryable: Bool?
    public var at: Date?

    public init(
        code: String? = nil,
        message: String? = nil,
        retryable: Bool? = nil,
        at: Date? = nil
    ) {
        self.code = code
        self.message = message
        self.retryable = retryable
        self.at = at
    }
}

/// Typed Inttegro domain value.
public struct FileLink: Codable, Sendable, Equatable {
    public var id: String
    public var kind: FileLinkKind
    public var fileId: String
    public var purpose: String
    public var status: FileLinkStatus
    public var active: Bool
    public var delivery: FileLinkDelivery
    public var access: FileLinkAccess
    public var createdBy: FileLinkActor
    public var revokedBy: FileLinkActor?
    public var customData: CustomData?
    public var metadata: FileMetadata?
    public var createdAt: Date
    public var updatedAt: Date
    public var expiresAt: Date
    public var revokedAt: Date?

    public init(
        id: String,
        kind: FileLinkKind,
        fileId: String,
        purpose: String,
        status: FileLinkStatus,
        active: Bool,
        delivery: FileLinkDelivery,
        access: FileLinkAccess,
        createdBy: FileLinkActor,
        revokedBy: FileLinkActor? = nil,
        customData: CustomData? = nil,
        metadata: FileMetadata? = nil,
        createdAt: Date,
        updatedAt: Date,
        expiresAt: Date,
        revokedAt: Date? = nil
    ) {
        self.id = id
        self.kind = kind
        self.fileId = fileId
        self.purpose = purpose
        self.status = status
        self.active = active
        self.delivery = delivery
        self.access = access
        self.createdBy = createdBy
        self.revokedBy = revokedBy
        self.customData = customData
        self.metadata = metadata
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.expiresAt = expiresAt
        self.revokedAt = revokedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case kind
        case fileId = "file_id"
        case purpose
        case status
        case active
        case delivery
        case access
        case createdBy = "created_by"
        case revokedBy = "revoked_by"
        case customData = "custom_data"
        case metadata
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case expiresAt = "expires_at"
        case revokedAt = "revoked_at"
    }
}

/// Typed Inttegro domain value.
public struct FileLinkAccess: Codable, Sendable, Equatable {
    public var maxAccesses: Int?
    public var accessCount: Int?
    public var lastAccessedAt: Date?
    public var allowDownload: Bool?
    public var allowedOrigins: [String]?

    public init(
        maxAccesses: Int? = nil,
        accessCount: Int? = nil,
        lastAccessedAt: Date? = nil,
        allowDownload: Bool? = nil,
        allowedOrigins: [String]? = nil
    ) {
        self.maxAccesses = maxAccesses
        self.accessCount = accessCount
        self.lastAccessedAt = lastAccessedAt
        self.allowDownload = allowDownload
        self.allowedOrigins = allowedOrigins
    }

    private enum CodingKeys: String, CodingKey {
        case maxAccesses = "max_accesses"
        case accessCount = "access_count"
        case lastAccessedAt = "last_accessed_at"
        case allowDownload = "allow_download"
        case allowedOrigins = "allowed_origins"
    }
}

/// Typed Inttegro request parameters.
public struct FileLinkAccessRequest: Codable, Sendable, Equatable {
    public var maxAccesses: Int?
    public var allowDownload: Bool?
    public var allowedOrigins: [String]?
    public var allowedIpRanges: [String]?

    public init(
        maxAccesses: Int? = nil,
        allowDownload: Bool? = nil,
        allowedOrigins: [String]? = nil,
        allowedIpRanges: [String]? = nil
    ) {
        self.maxAccesses = maxAccesses
        self.allowDownload = allowDownload
        self.allowedOrigins = allowedOrigins
        self.allowedIpRanges = allowedIpRanges
    }

    private enum CodingKeys: String, CodingKey {
        case maxAccesses = "max_accesses"
        case allowDownload = "allow_download"
        case allowedOrigins = "allowed_origins"
        case allowedIpRanges = "allowed_ip_ranges"
    }
}

/// Typed Inttegro domain value.
public struct FileLinkActor: Codable, Sendable, Equatable {
    public var email: String?
    public var id: String?
    public var name: String?
    public var type: String

    public init(
        email: String? = nil,
        id: String? = nil,
        name: String? = nil,
        type: String
    ) {
        self.email = email
        self.id = id
        self.name = name
        self.type = type
    }
}

/// Typed Inttegro domain value.
public struct FileLinkCreation: Codable, Sendable, Equatable {
    public var fileLink: FileLink
    public var url: String

    public init(
        fileLink: FileLink,
        url: String
    ) {
        self.fileLink = fileLink
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case fileLink = "file_link"
        case url
    }
}

/// Typed Inttegro domain value.
public struct FileLinkDelivery: Codable, Sendable, Equatable {
    public var mode: FileLinkDeliveryMode?
    public var filename: String?
    public var contentType: String?
    public var disposition: String?

    public init(
        mode: FileLinkDeliveryMode? = nil,
        filename: String? = nil,
        contentType: String? = nil,
        disposition: String? = nil
    ) {
        self.mode = mode
        self.filename = filename
        self.contentType = contentType
        self.disposition = disposition
    }

    private enum CodingKeys: String, CodingKey {
        case mode
        case filename
        case contentType = "content_type"
        case disposition
    }
}

/// Typed Inttegro request parameters.
public struct FileLinkDeliveryInput: Codable, Sendable, Equatable {
    public var mode: FileLinkDeliveryMode?
    public var filename: String?
    public var contentType: String?
    public var disposition: String?

    public init(
        mode: FileLinkDeliveryMode? = nil,
        filename: String? = nil,
        contentType: String? = nil,
        disposition: String? = nil
    ) {
        self.mode = mode
        self.filename = filename
        self.contentType = contentType
        self.disposition = disposition
    }

    private enum CodingKeys: String, CodingKey {
        case mode
        case filename
        case contentType = "content_type"
        case disposition
    }
}

/// Typed Inttegro domain value.
public struct FileLinkPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var fileLinks: [FileLink]

    public init(
        number: Int,
        size: Int,
        fileLinks: [FileLink]
    ) {
        self.number = number
        self.size = size
        self.fileLinks = fileLinks
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case fileLinks = "file_links"
    }
}

/// Typed Inttegro domain value.
public struct FileMedia: Codable, Sendable, Equatable {
    public var kind: String?
    public var width: Int?
    public var height: Int?
    public var durationMs: Int?
    public var pageCount: Int?
    public var frameCount: Int?
    public var colorSpace: String?
    public var hasAlpha: Bool?
    public var codec: String?
    public var aspectRatio: String?

    public init(
        kind: String? = nil,
        width: Int? = nil,
        height: Int? = nil,
        durationMs: Int? = nil,
        pageCount: Int? = nil,
        frameCount: Int? = nil,
        colorSpace: String? = nil,
        hasAlpha: Bool? = nil,
        codec: String? = nil,
        aspectRatio: String? = nil
    ) {
        self.kind = kind
        self.width = width
        self.height = height
        self.durationMs = durationMs
        self.pageCount = pageCount
        self.frameCount = frameCount
        self.colorSpace = colorSpace
        self.hasAlpha = hasAlpha
        self.codec = codec
        self.aspectRatio = aspectRatio
    }

    private enum CodingKeys: String, CodingKey {
        case kind
        case width
        case height
        case durationMs = "duration_ms"
        case pageCount = "page_count"
        case frameCount = "frame_count"
        case colorSpace = "color_space"
        case hasAlpha = "has_alpha"
        case codec
        case aspectRatio = "aspect_ratio"
    }
}

/// Typed Inttegro domain value.
public struct FilePage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var files: [File]

    public init(
        number: Int,
        size: Int,
        files: [File]
    ) {
        self.number = number
        self.size = size
        self.files = files
    }
}

/// Typed Inttegro domain value.
public struct FileParty: Codable, Sendable, Equatable {
    public var type: String?
    public var id: String?
    public var name: String?
    public var email: String?

    public init(
        type: String? = nil,
        id: String? = nil,
        name: String? = nil,
        email: String? = nil
    ) {
        self.type = type
        self.id = id
        self.name = name
        self.email = email
    }
}

/// Typed Inttegro request parameters.
public struct FilePartyInput: Codable, Sendable, Equatable {
    public var type: String?
    public var id: String?
    public var name: String?
    public var email: String?

    public init(
        type: String? = nil,
        id: String? = nil,
        name: String? = nil,
        email: String? = nil
    ) {
        self.type = type
        self.id = id
        self.name = name
        self.email = email
    }
}

/// Typed Inttegro request parameters.
public struct FileReferenceInput: Codable, Sendable, Equatable {
    public var reference: String?
    public var referenceKind: String?
    public var purpose: String?
    public var fileId: String
    public var field: String

    public init(
        reference: String? = nil,
        referenceKind: String? = nil,
        purpose: String? = nil,
        fileId: String,
        field: String
    ) {
        self.reference = reference
        self.referenceKind = referenceKind
        self.purpose = purpose
        self.fileId = fileId
        self.field = field
    }

    private enum CodingKeys: String, CodingKey {
        case reference
        case referenceKind = "reference_kind"
        case purpose
        case fileId = "file_id"
        case field
    }
}

/// Typed Inttegro request parameters.
public struct FileReferenceReconcileRequest: Codable, Sendable, Equatable {
    public var references: [FileReferenceInput]?
    public var resourceType: String
    public var resourceId: String

    public init(
        references: [FileReferenceInput]? = nil,
        resourceType: String,
        resourceId: String
    ) {
        self.references = references
        self.resourceType = resourceType
        self.resourceId = resourceId
    }

    private enum CodingKeys: String, CodingKey {
        case references
        case resourceType = "resource_type"
        case resourceId = "resource_id"
    }
}

/// Typed Inttegro domain value.
public struct FileReferenceReconciliation: Codable, Sendable, Equatable {
    public var reconciled: Bool

    public init(
        reconciled: Bool
    ) {
        self.reconciled = reconciled
    }
}

/// Typed Inttegro domain value.
public struct FileResource: Codable, Sendable, Equatable {
    public var type: String?
    public var id: String?
    public var name: String?

    public init(
        type: String? = nil,
        id: String? = nil,
        name: String? = nil
    ) {
        self.type = type
        self.id = id
        self.name = name
    }
}

/// Typed Inttegro request parameters.
public struct FileResourceInput: Codable, Sendable, Equatable {
    public var type: String?
    public var id: String?
    public var name: String?

    public init(
        type: String? = nil,
        id: String? = nil,
        name: String? = nil
    ) {
        self.type = type
        self.id = id
        self.name = name
    }
}

/// Typed Inttegro domain value.
public struct FileSource: Codable, Sendable, Equatable {
    public var type: FileSourceType?
    public var service: String?
    public var uploadRequestId: String?

    public init(
        type: FileSourceType? = nil,
        service: String? = nil,
        uploadRequestId: String? = nil
    ) {
        self.type = type
        self.service = service
        self.uploadRequestId = uploadRequestId
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case service
        case uploadRequestId = "upload_request_id"
    }
}

/// Typed Inttegro domain value.
public struct FileUploadReceipt: Codable, Sendable, Equatable {
    public var contentType: String
    public var createdAt: Date
    public var filename: String?
    public var id: String
    public var name: String?
    public var size: Int
    public var status: FileStatus

    public init(
        contentType: String,
        createdAt: Date,
        filename: String? = nil,
        id: String,
        name: String? = nil,
        size: Int,
        status: FileStatus
    ) {
        self.contentType = contentType
        self.createdAt = createdAt
        self.filename = filename
        self.id = id
        self.name = name
        self.size = size
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case contentType = "content_type"
        case createdAt = "created_at"
        case filename
        case id
        case name
        case size
        case status
    }
}

/// Typed Inttegro request parameters.
public struct FinalizeOrderRequest: Codable, Sendable, Equatable {
    public var orderId: String

    public init(
        orderId: String
    ) {
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccount: Codable, Sendable, Equatable {
    public var archivedAt: Date?
    public var createdAt: Date
    public var currency: String
    public var customData: CustomData?
    public var description: String?
    public var id: String
    public var institution: FinancialInstitution?
    public var label: String?
    public var pullConfiguration: FinancialAccountPullConfiguration?
    public var pushConfiguration: FinancialAccountPushConfiguration?
    public var reference: String?
    public var supplied: ResourceSupply?
    public var type: FinancialAccountType
    public var verification: FinancialAccountVerification?
    public var bankAccount: FinancialAccountBank?
    public var disconnectedAt: Date?
    public var doshAccount: DoshAccount?
    public var owner: FinancialAccountOwner?
    public var wallet: FinancialAccountWallet?

    public init(
        archivedAt: Date? = nil,
        createdAt: Date,
        currency: String,
        customData: CustomData? = nil,
        description: String? = nil,
        id: String,
        institution: FinancialInstitution? = nil,
        label: String? = nil,
        pullConfiguration: FinancialAccountPullConfiguration? = nil,
        pushConfiguration: FinancialAccountPushConfiguration? = nil,
        reference: String? = nil,
        supplied: ResourceSupply? = nil,
        type: FinancialAccountType,
        verification: FinancialAccountVerification? = nil,
        bankAccount: FinancialAccountBank? = nil,
        disconnectedAt: Date? = nil,
        doshAccount: DoshAccount? = nil,
        owner: FinancialAccountOwner? = nil,
        wallet: FinancialAccountWallet? = nil
    ) {
        self.archivedAt = archivedAt
        self.createdAt = createdAt
        self.currency = currency
        self.customData = customData
        self.description = description
        self.id = id
        self.institution = institution
        self.label = label
        self.pullConfiguration = pullConfiguration
        self.pushConfiguration = pushConfiguration
        self.reference = reference
        self.supplied = supplied
        self.type = type
        self.verification = verification
        self.bankAccount = bankAccount
        self.disconnectedAt = disconnectedAt
        self.doshAccount = doshAccount
        self.owner = owner
        self.wallet = wallet
    }

    private enum CodingKeys: String, CodingKey {
        case archivedAt = "archived_at"
        case createdAt = "created_at"
        case currency
        case customData = "custom_data"
        case description
        case id
        case institution
        case label
        case pullConfiguration = "pull_configuration"
        case pushConfiguration = "push_configuration"
        case reference
        case supplied
        case type
        case verification
        case bankAccount = "bank_account"
        case disconnectedAt = "disconnected_at"
        case doshAccount = "dosh_account"
        case owner
        case wallet
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountAddress: Codable, Sendable, Equatable {
    public var city: String
    public var country: String
    public var line1: String
    public var line2: String?
    public var name: String?
    public var phone: String?
    public var postCode: String?
    public var region: String

    public init(
        city: String,
        country: String,
        line1: String,
        line2: String? = nil,
        name: String? = nil,
        phone: String? = nil,
        postCode: String? = nil,
        region: String
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phone = phone
        self.postCode = postCode
        self.region = region
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case country
        case line1 = "line_1"
        case line2 = "line_2"
        case name
        case phone
        case postCode = "post_code"
        case region
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountBank: Codable, Sendable, Equatable {
    public var type: BankAccountType
    public var ghanaBankAccount: GhanaBankAccount?

    public init(
        type: BankAccountType,
        ghanaBankAccount: GhanaBankAccount? = nil
    ) {
        self.type = type
        self.ghanaBankAccount = ghanaBankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case ghanaBankAccount = "ghana_bank_account"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataInput?
    public var description: String?
    public var owner: FinancialAccountOwnerInput?
    public var pullConfiguration: FinancialAccountBankRequestPullConfiguration?
    public var pushConfiguration: FinancialAccountBankRequestPushConfiguration?
    public var currency: String
    public var label: String
    public var reference: String
    public var type: FinancialAccountType
    public var bankAccount: FinancialAccountBankRequestBankAccount

    public init(
        customData: CustomDataInput? = nil,
        description: String? = nil,
        owner: FinancialAccountOwnerInput? = nil,
        pullConfiguration: FinancialAccountBankRequestPullConfiguration? = nil,
        pushConfiguration: FinancialAccountBankRequestPushConfiguration? = nil,
        currency: String,
        label: String,
        reference: String,
        type: FinancialAccountType,
        bankAccount: FinancialAccountBankRequestBankAccount
    ) {
        self.customData = customData
        self.description = description
        self.owner = owner
        self.pullConfiguration = pullConfiguration
        self.pushConfiguration = pushConfiguration
        self.currency = currency
        self.label = label
        self.reference = reference
        self.type = type
        self.bankAccount = bankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case description
        case owner
        case pullConfiguration = "pull_configuration"
        case pushConfiguration = "push_configuration"
        case currency
        case label
        case reference
        case type
        case bankAccount = "bank_account"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequestBankAccount: Codable, Sendable, Equatable {
    public var type: BankAccountType
    public var ghanaBankAccount: FinancialAccountBankRequestBankAccountGhanaBankAccount

    public init(
        type: BankAccountType,
        ghanaBankAccount: FinancialAccountBankRequestBankAccountGhanaBankAccount
    ) {
        self.type = type
        self.ghanaBankAccount = ghanaBankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case ghanaBankAccount = "ghana_bank_account"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequestBankAccountGhanaBankAccount: Codable, Sendable, Equatable {
    public var bankName: String?
    public var branch: String?
    public var sortCode: String?
    public var swiftCode: String?
    public var holder: FinancialAccountOwnerInput?
    public var number: String

    public init(
        bankName: String? = nil,
        branch: String? = nil,
        sortCode: String? = nil,
        swiftCode: String? = nil,
        holder: FinancialAccountOwnerInput? = nil,
        number: String
    ) {
        self.bankName = bankName
        self.branch = branch
        self.sortCode = sortCode
        self.swiftCode = swiftCode
        self.holder = holder
        self.number = number
    }

    private enum CodingKeys: String, CodingKey {
        case bankName = "bank_name"
        case branch
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
        case holder
        case number
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequestPullConfiguration: Codable, Sendable, Equatable {
    public var enabled: Bool?

    public init(
        enabled: Bool? = nil
    ) {
        self.enabled = enabled
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequestPushConfiguration: Codable, Sendable, Equatable {
    public var enabled: Bool?

    public init(
        enabled: Bool? = nil
    ) {
        self.enabled = enabled
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountDisableRequest: Codable, Sendable, Equatable {
    public var unsetAsPayoutDestination: Bool?
    public var accountId: String

    public init(
        unsetAsPayoutDestination: Bool? = nil,
        accountId: String
    ) {
        self.unsetAsPayoutDestination = unsetAsPayoutDestination
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case unsetAsPayoutDestination = "unset_as_payout_destination"
        case accountId = "account_id"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountDoshRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataInput?
    public var description: String?
    public var pullConfiguration: FinancialAccountDoshRequestPullConfiguration?
    public var pushConfiguration: FinancialAccountDoshRequestPushConfiguration?
    public var currency: String
    public var label: String
    public var owner: FinancialAccountOwnerInput
    public var reference: String
    public var type: FinancialAccountType
    public var doshAccount: DoshAccount

    public init(
        customData: CustomDataInput? = nil,
        description: String? = nil,
        pullConfiguration: FinancialAccountDoshRequestPullConfiguration? = nil,
        pushConfiguration: FinancialAccountDoshRequestPushConfiguration? = nil,
        currency: String,
        label: String,
        owner: FinancialAccountOwnerInput,
        reference: String,
        type: FinancialAccountType,
        doshAccount: DoshAccount
    ) {
        self.customData = customData
        self.description = description
        self.pullConfiguration = pullConfiguration
        self.pushConfiguration = pushConfiguration
        self.currency = currency
        self.label = label
        self.owner = owner
        self.reference = reference
        self.type = type
        self.doshAccount = doshAccount
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case description
        case pullConfiguration = "pull_configuration"
        case pushConfiguration = "push_configuration"
        case currency
        case label
        case owner
        case reference
        case type
        case doshAccount = "dosh_account"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountDoshRequestPullConfiguration: Codable, Sendable, Equatable {
    public var enabled: Bool?

    public init(
        enabled: Bool? = nil
    ) {
        self.enabled = enabled
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountDoshRequestPushConfiguration: Codable, Sendable, Equatable {
    public var enabled: Bool?

    public init(
        enabled: Bool? = nil
    ) {
        self.enabled = enabled
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountEnablePullRequest: Codable, Sendable, Equatable {
    public var ipAddress: String?
    public var userAgent: String?
    public var accountId: String

    public init(
        ipAddress: String? = nil,
        userAgent: String? = nil,
        accountId: String
    ) {
        self.ipAddress = ipAddress
        self.userAgent = userAgent
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case ipAddress = "ip_address"
        case userAgent = "user_agent"
        case accountId = "account_id"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountIDRequest: Codable, Sendable, Equatable {
    public var accountId: String

    public init(
        accountId: String
    ) {
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case accountId = "account_id"
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountOwner: Codable, Sendable, Equatable {
    public var address: FinancialAccountAddress
    public var name: String

    public init(
        address: FinancialAccountAddress,
        name: String
    ) {
        self.address = address
        self.name = name
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountOwnerInput: Codable, Sendable, Equatable {
    public var name: String
    public var address: FinancialAccountOwnerInputAddress

    public init(
        name: String,
        address: FinancialAccountOwnerInputAddress
    ) {
        self.name = name
        self.address = address
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountOwnerInputAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phone: String?
    public var postCode: String?
    public var region: String?
    public var country: String

    public init(
        city: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phone: String? = nil,
        postCode: String? = nil,
        region: String? = nil,
        country: String
    ) {
        self.city = city
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phone = phone
        self.postCode = postCode
        self.region = region
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case line1 = "line_1"
        case line2 = "line_2"
        case name
        case phone
        case postCode = "post_code"
        case region
        case country
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountOwnerUpdateInput: Codable, Sendable, Equatable {
    public var name: String?
    public var address: FinancialAccountOwnerUpdateInputAddress?

    public init(
        name: String? = nil,
        address: FinancialAccountOwnerUpdateInputAddress? = nil
    ) {
        self.name = name
        self.address = address
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountOwnerUpdateInputAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var country: String?
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phone: String?
    public var postCode: String?
    public var region: String?

    public init(
        city: String? = nil,
        country: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phone: String? = nil,
        postCode: String? = nil,
        region: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phone = phone
        self.postCode = postCode
        self.region = region
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case country
        case line1 = "line_1"
        case line2 = "line_2"
        case name
        case phone
        case postCode = "post_code"
        case region
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountPage: Codable, Sendable, Equatable {
    public var accounts: [FinancialAccount]
    public var number: Int
    public var size: Int

    public init(
        accounts: [FinancialAccount],
        number: Int,
        size: Int
    ) {
        self.accounts = accounts
        self.number = number
        self.size = size
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountPageRequest: Codable, Sendable, Equatable {
    public var pageSize: Int?
    public var pageNumber: Int

    public init(
        pageSize: Int? = nil,
        pageNumber: Int
    ) {
        self.pageSize = pageSize
        self.pageNumber = pageNumber
    }

    private enum CodingKeys: String, CodingKey {
        case pageSize = "page_size"
        case pageNumber = "page_number"
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountPullConfiguration: Codable, Sendable, Equatable {
    public var enabledAt: Date
    public var mandate: FinancialAccountPullConfigurationMandate

    public init(
        enabledAt: Date,
        mandate: FinancialAccountPullConfigurationMandate
    ) {
        self.enabledAt = enabledAt
        self.mandate = mandate
    }

    private enum CodingKeys: String, CodingKey {
        case enabledAt = "enabled_at"
        case mandate
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountPullConfigurationMandate: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var id: String
    public var ipAddress: String
    public var userAgent: String

    public init(
        createdAt: Date,
        id: String,
        ipAddress: String,
        userAgent: String
    ) {
        self.createdAt = createdAt
        self.id = id
        self.ipAddress = ipAddress
        self.userAgent = userAgent
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case ipAddress = "ip_address"
        case userAgent = "user_agent"
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountPushConfiguration: Codable, Sendable, Equatable {
    public var enabledAt: Date

    public init(
        enabledAt: Date
    ) {
        self.enabledAt = enabledAt
    }

    private enum CodingKeys: String, CodingKey {
        case enabledAt = "enabled_at"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountUpdateRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataPatch?
    public var description: String?
    public var label: String?
    public var owner: FinancialAccountOwnerUpdateInput?
    public var reference: String?
    public var accountId: String

    public init(
        customData: CustomDataPatch? = nil,
        description: String? = nil,
        label: String? = nil,
        owner: FinancialAccountOwnerUpdateInput? = nil,
        reference: String? = nil,
        accountId: String
    ) {
        self.customData = customData
        self.description = description
        self.label = label
        self.owner = owner
        self.reference = reference
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case description
        case label
        case owner
        case reference
        case accountId = "account_id"
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountWallet: Codable, Sendable, Equatable {
    public var id: String
    public var type: WalletType
    public var mobileMoney: FinancialAccountWalletMobileMoney?

    public init(
        id: String,
        type: WalletType,
        mobileMoney: FinancialAccountWalletMobileMoney? = nil
    ) {
        self.id = id
        self.type = type
        self.mobileMoney = mobileMoney
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case mobileMoney = "mobile_money"
    }
}

/// Typed Inttegro domain value.
public struct FinancialAccountWalletMobileMoney: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var network: MobileMoneyNetwork

    public init(
        accountNumber: String,
        network: MobileMoneyNetwork
    ) {
        self.accountNumber = accountNumber
        self.network = network
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case network
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountWalletRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataInput?
    public var description: String?
    public var pullConfiguration: FinancialAccountWalletRequestPullConfiguration?
    public var pushConfiguration: FinancialAccountWalletRequestPushConfiguration?
    public var currency: String
    public var label: String
    public var owner: FinancialAccountOwnerInput
    public var reference: String
    public var type: FinancialAccountType
    public var wallet: FinancialAccountWalletRequestWallet

    public init(
        customData: CustomDataInput? = nil,
        description: String? = nil,
        pullConfiguration: FinancialAccountWalletRequestPullConfiguration? = nil,
        pushConfiguration: FinancialAccountWalletRequestPushConfiguration? = nil,
        currency: String,
        label: String,
        owner: FinancialAccountOwnerInput,
        reference: String,
        type: FinancialAccountType,
        wallet: FinancialAccountWalletRequestWallet
    ) {
        self.customData = customData
        self.description = description
        self.pullConfiguration = pullConfiguration
        self.pushConfiguration = pushConfiguration
        self.currency = currency
        self.label = label
        self.owner = owner
        self.reference = reference
        self.type = type
        self.wallet = wallet
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case description
        case pullConfiguration = "pull_configuration"
        case pushConfiguration = "push_configuration"
        case currency
        case label
        case owner
        case reference
        case type
        case wallet
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountWalletRequestPullConfiguration: Codable, Sendable, Equatable {
    public var enabled: Bool?

    public init(
        enabled: Bool? = nil
    ) {
        self.enabled = enabled
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountWalletRequestPushConfiguration: Codable, Sendable, Equatable {
    public var enabled: Bool?

    public init(
        enabled: Bool? = nil
    ) {
        self.enabled = enabled
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountWalletRequestWallet: Codable, Sendable, Equatable {
    public var type: WalletType
    public var mobileMoney: FinancialAccountWalletRequestWalletMobileMoney

    public init(
        type: WalletType,
        mobileMoney: FinancialAccountWalletRequestWalletMobileMoney
    ) {
        self.type = type
        self.mobileMoney = mobileMoney
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case mobileMoney = "mobile_money"
    }
}

/// Typed Inttegro request parameters.
public struct FinancialAccountWalletRequestWalletMobileMoney: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var network: MobileMoneyNetwork

    public init(
        accountNumber: String,
        network: MobileMoneyNetwork
    ) {
        self.accountNumber = accountNumber
        self.network = network
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case network
    }
}

/// Typed Inttegro domain value.
public struct FinancialInstitution: Codable, Sendable, Equatable {
    public var bank: FinancialInstitutionBank?
    public var country: String
    public var id: String
    public var mobileMoneyProvider: FinancialInstitutionMobileMoneyProvider?
    public var name: String
    public var type: String

    public init(
        bank: FinancialInstitutionBank? = nil,
        country: String,
        id: String,
        mobileMoneyProvider: FinancialInstitutionMobileMoneyProvider? = nil,
        name: String,
        type: String
    ) {
        self.bank = bank
        self.country = country
        self.id = id
        self.mobileMoneyProvider = mobileMoneyProvider
        self.name = name
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case bank
        case country
        case id
        case mobileMoneyProvider = "mobile_money_provider"
        case name
        case type
    }
}

/// Typed Inttegro domain value.
public struct FinancialInstitutionBank: Codable, Sendable, Equatable {
    public var bankAccountType: String
    public var branch: FinancialInstitutionBankBranch?
    public var codeScheme: String
    public var sortCodePrefix: String?
    public var swiftCode: String?

    public init(
        bankAccountType: String,
        branch: FinancialInstitutionBankBranch? = nil,
        codeScheme: String,
        sortCodePrefix: String? = nil,
        swiftCode: String? = nil
    ) {
        self.bankAccountType = bankAccountType
        self.branch = branch
        self.codeScheme = codeScheme
        self.sortCodePrefix = sortCodePrefix
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case bankAccountType = "bank_account_type"
        case branch
        case codeScheme = "code_scheme"
        case sortCodePrefix = "sort_code_prefix"
        case swiftCode = "swift_code"
    }
}

/// Typed Inttegro domain value.
public struct FinancialInstitutionBankBranch: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var sortCode: String

    public init(
        id: String,
        name: String,
        sortCode: String
    ) {
        self.id = id
        self.name = name
        self.sortCode = sortCode
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case sortCode = "sort_code"
    }
}

/// Typed Inttegro domain value.
public struct FinancialInstitutionMobileMoneyProvider: Codable, Sendable, Equatable {
    public var provider: String

    public init(
        provider: String
    ) {
        self.provider = provider
    }
}

/// Typed Inttegro request parameters.
public struct GenerateSecretKeyRequest: Codable, Sendable, Equatable {
    public var label: String?

    public init(
        label: String? = nil
    ) {
        self.label = label
    }
}

/// Typed Inttegro domain value.
public struct GeneratedSecretKey: Codable, Sendable, Equatable {
    public var id: String
    public var label: String?
    public var tokenType: SecretKeyTokenType
    public var issuedAt: Date
    public var token: String

    public init(
        id: String,
        label: String? = nil,
        tokenType: SecretKeyTokenType,
        issuedAt: Date,
        token: String
    ) {
        self.id = id
        self.label = label
        self.tokenType = tokenType
        self.issuedAt = issuedAt
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case tokenType = "token_type"
        case issuedAt = "issued_at"
        case token
    }
}

/// Typed Inttegro request parameters.
public struct GetPaymentMethodSettingsRequest: Codable, Sendable, Equatable {
    public init() {}
}

/// Typed Inttegro request parameters.
public struct GetPayoutSettingsRequest: Codable, Sendable, Equatable {
    public init() {}
}

/// Typed Inttegro domain value.
public struct GhanaBankAccount: Codable, Sendable, Equatable {
    public var branch: String?
    public var holder: FinancialAccountOwner
    public var name: String?
    public var number: String
    public var sortCode: String?
    public var swiftCode: String?

    public init(
        branch: String? = nil,
        holder: FinancialAccountOwner,
        name: String? = nil,
        number: String,
        sortCode: String? = nil,
        swiftCode: String? = nil
    ) {
        self.branch = branch
        self.holder = holder
        self.name = name
        self.number = number
        self.sortCode = sortCode
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case branch
        case holder
        case name
        case number
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
    }
}

/// Typed Inttegro request parameters.
public struct InitiateOTPRequest: Codable, Sendable, Equatable {
    public var asyncDelivery: Bool?
    public var messageTemplate: String?
    public var purpose: String?
    public var sender: String?
    public var tokenAlphabet: String?
    public var tokenAlphabetType: OTPAlphabetType?
    public var validityDurationInMinutes: Int?
    public var recipient: String
    public var serviceName: String
    public var tokenSize: Int

    public init(
        asyncDelivery: Bool? = nil,
        messageTemplate: String? = nil,
        purpose: String? = nil,
        sender: String? = nil,
        tokenAlphabet: String? = nil,
        tokenAlphabetType: OTPAlphabetType? = nil,
        validityDurationInMinutes: Int? = nil,
        recipient: String,
        serviceName: String,
        tokenSize: Int
    ) {
        self.asyncDelivery = asyncDelivery
        self.messageTemplate = messageTemplate
        self.purpose = purpose
        self.sender = sender
        self.tokenAlphabet = tokenAlphabet
        self.tokenAlphabetType = tokenAlphabetType
        self.validityDurationInMinutes = validityDurationInMinutes
        self.recipient = recipient
        self.serviceName = serviceName
        self.tokenSize = tokenSize
    }

    private enum CodingKeys: String, CodingKey {
        case asyncDelivery = "async_delivery"
        case messageTemplate = "message_template"
        case purpose
        case sender
        case tokenAlphabet = "token_alphabet"
        case tokenAlphabetType = "token_alphabet_type"
        case validityDurationInMinutes = "validity_duration_in_minutes"
        case recipient
        case serviceName = "service_name"
        case tokenSize = "token_size"
    }
}

/// Typed Inttegro request parameters.
public struct InlineProductDetailsInput: Codable, Sendable, Equatable {
    public var about: String?
    public var customData: CustomDataInput?
    public var reference: String?
    public var taxCode: String?
    public var name: String
    public var price: PriceParams
    public var quantity: Int
    public var type: ProductType

    public init(
        about: String? = nil,
        customData: CustomDataInput? = nil,
        reference: String? = nil,
        taxCode: String? = nil,
        name: String,
        price: PriceParams,
        quantity: Int,
        type: ProductType
    ) {
        self.about = about
        self.customData = customData
        self.reference = reference
        self.taxCode = taxCode
        self.name = name
        self.price = price
        self.quantity = quantity
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case about
        case customData = "custom_data"
        case reference
        case taxCode = "tax_code"
        case name
        case price
        case quantity
        case type
    }
}

/// Typed Inttegro domain value.
public struct InvoiceSettings: Codable, Sendable, Equatable {
    public var number: String?
    public var memo: String?
    public var footer: String?
    public var customData: CustomData?

    public init(
        number: String? = nil,
        memo: String? = nil,
        footer: String? = nil,
        customData: CustomData? = nil
    ) {
        self.number = number
        self.memo = memo
        self.footer = footer
        self.customData = customData
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case memo
        case footer
        case customData = "custom_data"
    }
}

/// Typed Inttegro request parameters.
public struct InvoiceSettingsInput: Codable, Sendable, Equatable {
    public var number: String?
    public var memo: String?
    public var footer: String?
    public var customData: CustomData?

    public init(
        number: String? = nil,
        memo: String? = nil,
        footer: String? = nil,
        customData: CustomData? = nil
    ) {
        self.number = number
        self.memo = memo
        self.footer = footer
        self.customData = customData
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case memo
        case footer
        case customData = "custom_data"
    }
}

/// Typed Inttegro request parameters.
public struct ListCountrySpecsRequest: Codable, Sendable, Equatable {
    public init() {}
}

/// Typed Inttegro request parameters.
public struct LookupBalanceTransactionRequest: Codable, Sendable, Equatable {
    public var transactionId: String

    public init(
        transactionId: String
    ) {
        self.transactionId = transactionId
    }

    private enum CodingKeys: String, CodingKey {
        case transactionId = "transaction_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupBalancesRequest: Codable, Sendable, Equatable {
    public init() {}
}

/// Typed Inttegro request parameters.
public struct LookupBroadcastRequest: Codable, Sendable, Equatable {
    public var broadcastId: String

    public init(
        broadcastId: String
    ) {
        self.broadcastId = broadcastId
    }

    private enum CodingKeys: String, CodingKey {
        case broadcastId = "broadcast_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupChimeRequest: Codable, Sendable, Equatable {
    public var chimeId: String

    public init(
        chimeId: String
    ) {
        self.chimeId = chimeId
    }

    private enum CodingKeys: String, CodingKey {
        case chimeId = "chime_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupCustomerRequest: Codable, Sendable, Equatable {
    public var customerId: String

    public init(
        customerId: String
    ) {
        self.customerId = customerId
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupFileLinkRequest: Codable, Sendable, Equatable {
    public var id: String

    public init(
        id: String
    ) {
        self.id = id
    }
}

/// Typed Inttegro request parameters.
public struct LookupFileRequest: Codable, Sendable, Equatable {
    public var fileId: String

    public init(
        fileId: String
    ) {
        self.fileId = fileId
    }

    private enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupOTPRequest: Codable, Sendable, Equatable {
    public var transactionId: String

    public init(
        transactionId: String
    ) {
        self.transactionId = transactionId
    }

    private enum CodingKeys: String, CodingKey {
        case transactionId = "transaction_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupOrderRequest: Codable, Sendable, Equatable {
    public var orderId: String

    public init(
        orderId: String
    ) {
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupPaymentMethodRequest: Codable, Sendable, Equatable {
    public var paymentMethodId: String

    public init(
        paymentMethodId: String
    ) {
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupPayoutRequest: Codable, Sendable, Equatable {
    public var payoutId: String

    public init(
        payoutId: String
    ) {
        self.payoutId = payoutId
    }

    private enum CodingKeys: String, CodingKey {
        case payoutId = "payout_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupPriceRequest: Codable, Sendable, Equatable {
    public var priceId: String

    public init(
        priceId: String
    ) {
        self.priceId = priceId
    }

    private enum CodingKeys: String, CodingKey {
        case priceId = "price_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupProductRequest: Codable, Sendable, Equatable {
    public var productId: String

    public init(
        productId: String
    ) {
        self.productId = productId
    }

    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupPurchaseIntentRequest: Codable, Sendable, Equatable {
    public var id: String

    public init(
        id: String
    ) {
        self.id = id
    }
}

/// Typed Inttegro request parameters.
public struct LookupRefundRequest: Codable, Sendable, Equatable {
    public var refundId: String

    public init(
        refundId: String
    ) {
        self.refundId = refundId
    }

    private enum CodingKeys: String, CodingKey {
        case refundId = "refund_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupScheduleRequest: Codable, Sendable, Equatable {
    public var scheduleId: String

    public init(
        scheduleId: String
    ) {
        self.scheduleId = scheduleId
    }

    private enum CodingKeys: String, CodingKey {
        case scheduleId = "schedule_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupSecretKeyRequest: Codable, Sendable, Equatable {
    public var secretKeyId: String

    public init(
        secretKeyId: String
    ) {
        self.secretKeyId = secretKeyId
    }

    private enum CodingKeys: String, CodingKey {
        case secretKeyId = "secret_key_id"
    }
}

/// Typed Inttegro request parameters.
public struct LookupUploadRequestRequest: Codable, Sendable, Equatable {
    public var id: String

    public init(
        id: String
    ) {
        self.id = id
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplate: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var about: String?
    public var channel: MessageTemplateChannel
    public var purpose: String
    public var locale: String
    public var status: MessageTemplateStatus
    public var version: Int
    public var publishedVersion: Int?
    public var draftVersion: Int
    public var hasUnpublishedChanges: Bool
    public var variables: [MessageTemplateVariable]?
    public var sms: MessageTemplateSMSContent?
    public var email: MessageTemplateEmailContent?
    public var attachments: [String]?
    public var createdAt: Date
    public var updatedAt: Date
    public var publishedAt: Date?
    public var archivedAt: Date?

    public init(
        id: String,
        name: String,
        about: String? = nil,
        channel: MessageTemplateChannel,
        purpose: String,
        locale: String,
        status: MessageTemplateStatus,
        version: Int,
        publishedVersion: Int? = nil,
        draftVersion: Int,
        hasUnpublishedChanges: Bool,
        variables: [MessageTemplateVariable]? = nil,
        sms: MessageTemplateSMSContent? = nil,
        email: MessageTemplateEmailContent? = nil,
        attachments: [String]? = nil,
        createdAt: Date,
        updatedAt: Date,
        publishedAt: Date? = nil,
        archivedAt: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.about = about
        self.channel = channel
        self.purpose = purpose
        self.locale = locale
        self.status = status
        self.version = version
        self.publishedVersion = publishedVersion
        self.draftVersion = draftVersion
        self.hasUnpublishedChanges = hasUnpublishedChanges
        self.variables = variables
        self.sms = sms
        self.email = email
        self.attachments = attachments
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.publishedAt = publishedAt
        self.archivedAt = archivedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case about
        case channel
        case purpose
        case locale
        case status
        case version
        case publishedVersion = "published_version"
        case draftVersion = "draft_version"
        case hasUnpublishedChanges = "has_unpublished_changes"
        case variables
        case sms
        case email
        case attachments
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case publishedAt = "published_at"
        case archivedAt = "archived_at"
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplateEmailContent: Codable, Sendable, Equatable {
    public var subject: String
    public var html: String
    public var from: MessageTemplateMailbox?
    public var replyTo: MessageTemplateMailbox?
    public var headers: MessageHeaders?

    public init(
        subject: String,
        html: String,
        from: MessageTemplateMailbox? = nil,
        replyTo: MessageTemplateMailbox? = nil,
        headers: MessageHeaders? = nil
    ) {
        self.subject = subject
        self.html = html
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
    }

    private enum CodingKeys: String, CodingKey {
        case subject
        case html
        case from
        case replyTo = "reply_to"
        case headers
    }
}

/// Typed Inttegro request parameters.
public struct MessageTemplateEmailContentInput: Codable, Sendable, Equatable {
    public var from: MessageTemplateMailboxInput?
    public var replyTo: MessageTemplateMailboxInput?
    public var headers: MessageHeaders?
    public var subject: String
    public var html: String

    public init(
        from: MessageTemplateMailboxInput? = nil,
        replyTo: MessageTemplateMailboxInput? = nil,
        headers: MessageHeaders? = nil,
        subject: String,
        html: String
    ) {
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
        self.subject = subject
        self.html = html
    }

    private enum CodingKeys: String, CodingKey {
        case from
        case replyTo = "reply_to"
        case headers
        case subject
        case html
    }
}

/// Typed Inttegro request parameters.
public struct MessageTemplateIDRequest: Codable, Sendable, Equatable {
    public var id: String

    public init(
        id: String
    ) {
        self.id = id
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplateMailbox: Codable, Sendable, Equatable {
    public var address: String
    public var name: String?

    public init(
        address: String,
        name: String? = nil
    ) {
        self.address = address
        self.name = name
    }
}

/// Typed Inttegro request parameters.
public struct MessageTemplateMailboxInput: Codable, Sendable, Equatable {
    public var name: String?
    public var address: String

    public init(
        name: String? = nil,
        address: String
    ) {
        self.name = name
        self.address = address
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplatePreview: Codable, Sendable, Equatable {
    public var messageTemplate: MessageTemplate
    public var rendered: RenderedMessageTemplate

    public init(
        messageTemplate: MessageTemplate,
        rendered: RenderedMessageTemplate
    ) {
        self.messageTemplate = messageTemplate
        self.rendered = rendered
    }

    private enum CodingKeys: String, CodingKey {
        case messageTemplate = "message_template"
        case rendered
    }
}

/// Typed Inttegro request parameters.
public struct MessageTemplateReferenceInput: Codable, Sendable, Equatable {
    public var variables: JSONData?
    public var templateId: String

    public init(
        variables: JSONData? = nil,
        templateId: String
    ) {
        self.variables = variables
        self.templateId = templateId
    }

    private enum CodingKeys: String, CodingKey {
        case variables
        case templateId = "template_id"
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplateSMSContent: Codable, Sendable, Equatable {
    public var messageTemplate: String

    public init(
        messageTemplate: String
    ) {
        self.messageTemplate = messageTemplate
    }

    private enum CodingKeys: String, CodingKey {
        case messageTemplate = "message_template"
    }
}

/// Typed Inttegro request parameters.
public struct MessageTemplateSMSContentInput: Codable, Sendable, Equatable {
    public var messageTemplate: String

    public init(
        messageTemplate: String
    ) {
        self.messageTemplate = messageTemplate
    }

    private enum CodingKeys: String, CodingKey {
        case messageTemplate = "message_template"
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplateSafetyResult: Codable, Sendable, Equatable {
    public var contentHash: String
    public var links: [MessageTemplateScannedLink]?
    public var normalizedText: String
    public var quarantineNotes: String?
    public var reasonCodes: [String]?
    public var sanitizedHtml: String?
    public var scanner: String
    public var status: ContentSafetyStatus

    public init(
        contentHash: String,
        links: [MessageTemplateScannedLink]? = nil,
        normalizedText: String,
        quarantineNotes: String? = nil,
        reasonCodes: [String]? = nil,
        sanitizedHtml: String? = nil,
        scanner: String,
        status: ContentSafetyStatus
    ) {
        self.contentHash = contentHash
        self.links = links
        self.normalizedText = normalizedText
        self.quarantineNotes = quarantineNotes
        self.reasonCodes = reasonCodes
        self.sanitizedHtml = sanitizedHtml
        self.scanner = scanner
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case contentHash = "content_hash"
        case links
        case normalizedText = "normalized_text"
        case quarantineNotes = "quarantine_notes"
        case reasonCodes = "reason_codes"
        case sanitizedHtml = "sanitized_html"
        case scanner
        case status
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplateScannedLink: Codable, Sendable, Equatable {
    public var host: String?
    public var raw: String
    public var reason: String?
    public var scheme: String
    public var status: String

    public init(
        host: String? = nil,
        raw: String,
        reason: String? = nil,
        scheme: String,
        status: String
    ) {
        self.host = host
        self.raw = raw
        self.reason = reason
        self.scheme = scheme
        self.status = status
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplateVariable: Codable, Sendable, Equatable {
    public var about: String?
    public var `default`: JSONValue?
    public var items: [MessageTemplateVariableItem]?
    public var name: String
    public var required: Bool
    public var type: MessageTemplateVariableType

    public init(
        about: String? = nil,
        `default`: JSONValue? = nil,
        items: [MessageTemplateVariableItem]? = nil,
        name: String,
        required: Bool,
        type: MessageTemplateVariableType
    ) {
        self.about = about
        self.`default` = `default`
        self.items = items
        self.name = name
        self.required = required
        self.type = type
    }
}

/// Typed Inttegro request parameters.
public struct MessageTemplateVariableInput: Codable, Sendable, Equatable {
    public var required: Bool?
    public var `default`: JSONValue?
    public var about: String?
    public var items: [MessageTemplateVariableItemInput]?
    public var name: String
    public var type: MessageTemplateVariableType

    public init(
        required: Bool? = nil,
        `default`: JSONValue? = nil,
        about: String? = nil,
        items: [MessageTemplateVariableItemInput]? = nil,
        name: String,
        type: MessageTemplateVariableType
    ) {
        self.required = required
        self.`default` = `default`
        self.about = about
        self.items = items
        self.name = name
        self.type = type
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplateVariableItem: Codable, Sendable, Equatable {
    public var about: String?
    public var `default`: JSONValue?
    public var name: String
    public var required: Bool
    public var type: MessageTemplateVariableItemType

    public init(
        about: String? = nil,
        `default`: JSONValue? = nil,
        name: String,
        required: Bool,
        type: MessageTemplateVariableItemType
    ) {
        self.about = about
        self.`default` = `default`
        self.name = name
        self.required = required
        self.type = type
    }
}

/// Typed Inttegro request parameters.
public struct MessageTemplateVariableItemInput: Codable, Sendable, Equatable {
    public var about: String?
    public var `default`: JSONValue?
    public var required: Bool?
    public var name: String
    public var type: MessageTemplateVariableItemType

    public init(
        about: String? = nil,
        `default`: JSONValue? = nil,
        required: Bool? = nil,
        name: String,
        type: MessageTemplateVariableItemType
    ) {
        self.about = about
        self.`default` = `default`
        self.required = required
        self.name = name
        self.type = type
    }
}

/// Typed Inttegro domain value.
public struct MessageTemplatesPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var messageTemplates: [MessageTemplate]

    public init(
        number: Int,
        size: Int,
        messageTemplates: [MessageTemplate]
    ) {
        self.number = number
        self.size = size
        self.messageTemplates = messageTemplates
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case messageTemplates = "message_templates"
    }
}

/// Typed Inttegro domain value.
public struct OTPTransaction: Codable, Sendable, Equatable {
    public var cancelReason: String?
    public var canceledAt: Date?
    public var expiresAt: Date
    public var fullMessage: String
    public var id: String
    public var initiatedAt: Date
    public var status: OTPStatus
    public var transmission: OTPTransmission?

    public init(
        cancelReason: String? = nil,
        canceledAt: Date? = nil,
        expiresAt: Date,
        fullMessage: String,
        id: String,
        initiatedAt: Date,
        status: OTPStatus,
        transmission: OTPTransmission? = nil
    ) {
        self.cancelReason = cancelReason
        self.canceledAt = canceledAt
        self.expiresAt = expiresAt
        self.fullMessage = fullMessage
        self.id = id
        self.initiatedAt = initiatedAt
        self.status = status
        self.transmission = transmission
    }

    private enum CodingKeys: String, CodingKey {
        case cancelReason = "cancel_reason"
        case canceledAt = "canceled_at"
        case expiresAt = "expires_at"
        case fullMessage = "full_message"
        case id
        case initiatedAt = "initiated_at"
        case status
        case transmission
    }
}

/// Typed Inttegro domain value.
public struct OTPTransmission: Codable, Sendable, Equatable {
    public var recipient: String
    public var senderId: String
    public var sentAt: Date?
    public var sentVia: String?
    public var status: OTPTransmissionStatus?

    public init(
        recipient: String,
        senderId: String,
        sentAt: Date? = nil,
        sentVia: String? = nil,
        status: OTPTransmissionStatus? = nil
    ) {
        self.recipient = recipient
        self.senderId = senderId
        self.sentAt = sentAt
        self.sentVia = sentVia
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case recipient
        case senderId = "sender_id"
        case sentAt = "sent_at"
        case sentVia = "sent_via"
        case status
    }
}

/// Typed Inttegro domain value.
public struct OTPVerification: Codable, Sendable, Equatable {
    public var transaction: OTPTransaction
    public var verificationAttempt: OTPVerificationAttempt

    public init(
        transaction: OTPTransaction,
        verificationAttempt: OTPVerificationAttempt
    ) {
        self.transaction = transaction
        self.verificationAttempt = verificationAttempt
    }

    private enum CodingKeys: String, CodingKey {
        case transaction
        case verificationAttempt = "verification_attempt"
    }
}

/// Typed Inttegro domain value.
public struct OTPVerificationAttempt: Codable, Sendable, Equatable {
    public var attemptedAt: Date
    public var id: String
    public var presentedToken: String
    public var recipient: String
    public var result: OTPVerificationAttemptResult

    public init(
        attemptedAt: Date,
        id: String,
        presentedToken: String,
        recipient: String,
        result: OTPVerificationAttemptResult
    ) {
        self.attemptedAt = attemptedAt
        self.id = id
        self.presentedToken = presentedToken
        self.recipient = recipient
        self.result = result
    }

    private enum CodingKeys: String, CodingKey {
        case attemptedAt = "attempted_at"
        case id
        case presentedToken = "presented_token"
        case recipient
        case result
    }
}

/// Typed Inttegro domain value.
public struct OTPVerificationAttemptResult: Codable, Sendable, Equatable {
    public var detail: String?
    public var verdict: OTPVerificationVerdict

    public init(
        detail: String? = nil,
        verdict: OTPVerificationVerdict
    ) {
        self.detail = detail
        self.verdict = verdict
    }
}

/// Typed Inttegro domain value.
public struct Order: Codable, Sendable, Equatable {
    public var canceledAt: Date?
    public var checkoutSettings: OrderCheckoutSettings?
    public var completedAt: Date?
    public var createdFrom: OrderCreatedFrom?
    public var customData: CustomData?
    public var customer: OrderCustomer
    public var expiresAt: Date?
    public var id: String
    public var initiatedAt: Date
    public var invoice: OrderInvoice?
    public var number: String?
    public var receiptNumber: String?
    public var refunds: [Refund]?
    public var invoiceSettings: InvoiceSettings?
    public var status: OrderStatus
    public var sealedAt: Date?
    public var lineItemGroup: OrderLineItemGroup?
    public var payment: Payment?
    public var paidAt: Date?
    public var paymentDueAt: Date?
    public var reference: String?

    public init(
        canceledAt: Date? = nil,
        checkoutSettings: OrderCheckoutSettings? = nil,
        completedAt: Date? = nil,
        createdFrom: OrderCreatedFrom? = nil,
        customData: CustomData? = nil,
        customer: OrderCustomer,
        expiresAt: Date? = nil,
        id: String,
        initiatedAt: Date,
        invoice: OrderInvoice? = nil,
        number: String? = nil,
        receiptNumber: String? = nil,
        refunds: [Refund]? = nil,
        invoiceSettings: InvoiceSettings? = nil,
        status: OrderStatus,
        sealedAt: Date? = nil,
        lineItemGroup: OrderLineItemGroup? = nil,
        payment: Payment? = nil,
        paidAt: Date? = nil,
        paymentDueAt: Date? = nil,
        reference: String? = nil
    ) {
        self.canceledAt = canceledAt
        self.checkoutSettings = checkoutSettings
        self.completedAt = completedAt
        self.createdFrom = createdFrom
        self.customData = customData
        self.customer = customer
        self.expiresAt = expiresAt
        self.id = id
        self.initiatedAt = initiatedAt
        self.invoice = invoice
        self.number = number
        self.receiptNumber = receiptNumber
        self.refunds = refunds
        self.invoiceSettings = invoiceSettings
        self.status = status
        self.sealedAt = sealedAt
        self.lineItemGroup = lineItemGroup
        self.payment = payment
        self.paidAt = paidAt
        self.paymentDueAt = paymentDueAt
        self.reference = reference
    }

    private enum CodingKeys: String, CodingKey {
        case canceledAt = "canceled_at"
        case checkoutSettings = "checkout_settings"
        case completedAt = "completed_at"
        case createdFrom = "created_from"
        case customData = "custom_data"
        case customer
        case expiresAt = "expires_at"
        case id
        case initiatedAt = "initiated_at"
        case invoice
        case number
        case receiptNumber = "receipt_number"
        case refunds
        case invoiceSettings = "invoice_settings"
        case status
        case sealedAt = "sealed_at"
        case lineItemGroup = "line_item_group"
        case payment
        case paidAt = "paid_at"
        case paymentDueAt = "payment_due_at"
        case reference
    }
}

/// Typed Inttegro domain value.
public struct OrderAddress: Codable, Sendable, Equatable {
    public var name: String?
    public var phoneNumber: String?
    public var line1: String?
    public var line2: String?
    public var city: String?
    public var region: String?
    public var postCode: String?
    public var country: String

    public init(
        name: String? = nil,
        phoneNumber: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        city: String? = nil,
        region: String? = nil,
        postCode: String? = nil,
        country: String
    ) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.line1 = line1
        self.line2 = line2
        self.city = city
        self.region = region
        self.postCode = postCode
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber = "phone_number"
        case line1
        case line2
        case city
        case region
        case postCode = "post_code"
        case country
    }
}

/// Typed Inttegro domain value.
public struct OrderCheckoutSettings: Codable, Sendable, Equatable {
    public var redirectUrl: String?
    public var cancelUrl: String?

    public init(
        redirectUrl: String? = nil,
        cancelUrl: String? = nil
    ) {
        self.redirectUrl = redirectUrl
        self.cancelUrl = cancelUrl
    }

    private enum CodingKeys: String, CodingKey {
        case redirectUrl = "redirect_url"
        case cancelUrl = "cancel_url"
    }
}

/// Typed Inttegro domain value.
public struct OrderCreatedFrom: Codable, Sendable, Equatable {
    public var source: String?
    public var resourceType: OrderCreatedFromResourceType?
    public var resourceId: String?

    public init(
        source: String? = nil,
        resourceType: OrderCreatedFromResourceType? = nil,
        resourceId: String? = nil
    ) {
        self.source = source
        self.resourceType = resourceType
        self.resourceId = resourceId
    }

    private enum CodingKeys: String, CodingKey {
        case source
        case resourceType = "resource_type"
        case resourceId = "resource_id"
    }
}

/// Typed Inttegro domain value.
public struct OrderCustomer: Codable, Sendable, Equatable {
    public var id: String
    public var guest: Bool
    public var name: String
    public var emailAddress: String?
    public var phoneNumber: String?
    public var billingAddress: OrderAddress?
    public var shippingAddress: OrderAddress?

    public init(
        id: String,
        guest: Bool,
        name: String,
        emailAddress: String? = nil,
        phoneNumber: String? = nil,
        billingAddress: OrderAddress? = nil,
        shippingAddress: OrderAddress? = nil
    ) {
        self.id = id
        self.guest = guest
        self.name = name
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
        self.billingAddress = billingAddress
        self.shippingAddress = shippingAddress
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case guest
        case name
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
        case billingAddress = "billing_address"
        case shippingAddress = "shipping_address"
    }
}

/// Typed Inttegro domain value.
public struct OrderDocumentDelivery: Codable, Sendable, Equatable {
    public var deliveries: [OrderDocumentDeliveryAttempt]?
    public var documentKind: OrderDocumentKind?
    public var documentUrl: String?
    public var failedChannels: [String]?
    public var failures: [OrderDocumentDeliveryFailure]?
    public var sentChannels: [String]?

    public init(
        deliveries: [OrderDocumentDeliveryAttempt]? = nil,
        documentKind: OrderDocumentKind? = nil,
        documentUrl: String? = nil,
        failedChannels: [String]? = nil,
        failures: [OrderDocumentDeliveryFailure]? = nil,
        sentChannels: [String]? = nil
    ) {
        self.deliveries = deliveries
        self.documentKind = documentKind
        self.documentUrl = documentUrl
        self.failedChannels = failedChannels
        self.failures = failures
        self.sentChannels = sentChannels
    }

    private enum CodingKeys: String, CodingKey {
        case deliveries
        case documentKind = "document_kind"
        case documentUrl = "document_url"
        case failedChannels = "failed_channels"
        case failures
        case sentChannels = "sent_channels"
    }
}

/// Typed Inttegro domain value.
public struct OrderDocumentDeliveryAttempt: Codable, Sendable, Equatable {
    public var channel: DeliveryChannel?
    public var chimeId: String?

    public init(
        channel: DeliveryChannel? = nil,
        chimeId: String? = nil
    ) {
        self.channel = channel
        self.chimeId = chimeId
    }

    private enum CodingKeys: String, CodingKey {
        case channel
        case chimeId = "chime_id"
    }
}

/// Typed Inttegro domain value.
public struct OrderDocumentDeliveryFailure: Codable, Sendable, Equatable {
    public var channel: DeliveryChannel?
    public var error: String?

    public init(
        channel: DeliveryChannel? = nil,
        error: String? = nil
    ) {
        self.channel = channel
        self.error = error
    }
}

/// Typed Inttegro request parameters.
public struct OrderDocumentDeliveryRequest: Codable, Sendable, Equatable {
    public var orderId: String

    public init(
        orderId: String
    ) {
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
    }
}

/// Typed Inttegro domain value.
public struct OrderDocumentDeliveryResult: Codable, Sendable, Equatable {
    public var delivery: OrderDocumentDelivery?
    public var error: Error?
    public var order: Order?

    public init(
        delivery: OrderDocumentDelivery? = nil,
        error: Error? = nil,
        order: Order? = nil
    ) {
        self.delivery = delivery
        self.error = error
        self.order = order
    }
}

/// Typed Inttegro domain value.
public struct OrderDocumentFormat: Codable, Sendable, Equatable {
    public var url: String

    public init(
        url: String
    ) {
        self.url = url
    }
}

/// Typed Inttegro domain value.
public struct OrderFeeLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var fee: OrderFeeLineItemFee

    public init(
        type: String,
        fee: OrderFeeLineItemFee
    ) {
        self.type = type
        self.fee = fee
    }
}

/// Typed Inttegro domain value.
public struct OrderFeeLineItemFee: Codable, Sendable, Equatable {
    public var id: String
    public var description: String?
    public var taxCode: String?
    public var amount: Amount
    public var label: String

    public init(
        id: String,
        description: String? = nil,
        taxCode: String? = nil,
        amount: Amount,
        label: String
    ) {
        self.id = id
        self.description = description
        self.taxCode = taxCode
        self.amount = amount
        self.label = label
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case description
        case taxCode = "tax_code"
        case amount
        case label
    }
}

/// Typed Inttegro domain value.
public struct OrderInvoice: Codable, Sendable, Equatable {
    public var number: String?
    public var format: OrderInvoiceFormat

    public init(
        number: String? = nil,
        format: OrderInvoiceFormat
    ) {
        self.number = number
        self.format = format
    }
}

/// Typed Inttegro domain value.
public struct OrderInvoiceFormat: Codable, Sendable, Equatable {
    public var web: OrderDocumentFormat
    public var pdf: OrderDocumentFormat
    public var receipt: OrderDocumentFormat?

    public init(
        web: OrderDocumentFormat,
        pdf: OrderDocumentFormat,
        receipt: OrderDocumentFormat? = nil
    ) {
        self.web = web
        self.pdf = pdf
        self.receipt = receipt
    }
}

/// Typed Inttegro domain value.
public struct OrderLineItemGroup: Codable, Sendable, Equatable {
    public var lineItems: [OrderLineItem]
    public var total: Amount

    public init(
        lineItems: [OrderLineItem],
        total: Amount
    ) {
        self.lineItems = lineItems
        self.total = total
    }

    private enum CodingKeys: String, CodingKey {
        case lineItems = "line_items"
        case total
    }
}

public struct OrderDiscountLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var discount: OrderDiscount

    public init(
        type: String,
        discount: OrderDiscount
    ) {
        self.type = type
        self.discount = discount
    }
}

public struct OrderDiscount: Codable, Sendable, Equatable { public init() {} }

/// Typed Inttegro domain value.
public struct OrderPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var orders: [Order]

    public init(
        number: Int,
        size: Int,
        orders: [Order]
    ) {
        self.number = number
        self.size = size
        self.orders = orders
    }
}

/// Typed Inttegro request parameters.
public struct OrderPayoutSettingsRequest: Codable, Sendable, Equatable {
    public var destination: OrderPayoutSettingsRequestDestination?
    public var enableFx: Bool?

    public init(
        destination: OrderPayoutSettingsRequestDestination? = nil,
        enableFx: Bool? = nil
    ) {
        self.destination = destination
        self.enableFx = enableFx
    }

    private enum CodingKeys: String, CodingKey {
        case destination
        case enableFx = "enable_fx"
    }
}

/// Typed Inttegro request parameters.
public struct OrderPayoutSettingsRequestDestination: Codable, Sendable, Equatable {
    public var financialAccountId: String

    public init(
        financialAccountId: String
    ) {
        self.financialAccountId = financialAccountId
    }

    private enum CodingKeys: String, CodingKey {
        case financialAccountId = "financial_account_id"
    }
}

/// Typed Inttegro domain value.
public struct OrderProductLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var product: OrderProductLineItemProduct

    public init(
        type: String,
        product: OrderProductLineItemProduct
    ) {
        self.type = type
        self.product = product
    }
}

/// Typed Inttegro domain value.
public struct OrderProductLineItemProduct: Codable, Sendable, Equatable {
    public var id: String
    public var productId: String?
    public var priceId: String?
    public var reference: String?
    public var about: String?
    public var customData: CustomData?
    public var taxCode: String?
    public var name: String
    public var category: String?
    public var type: String?
    public var price: Price
    public var quantity: Int

    public init(
        id: String,
        productId: String? = nil,
        priceId: String? = nil,
        reference: String? = nil,
        about: String? = nil,
        customData: CustomData? = nil,
        taxCode: String? = nil,
        name: String,
        category: String? = nil,
        type: String? = nil,
        price: Price,
        quantity: Int
    ) {
        self.id = id
        self.productId = productId
        self.priceId = priceId
        self.reference = reference
        self.about = about
        self.customData = customData
        self.taxCode = taxCode
        self.name = name
        self.category = category
        self.type = type
        self.price = price
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case productId = "product_id"
        case priceId = "price_id"
        case reference
        case about
        case customData = "custom_data"
        case taxCode = "tax_code"
        case name
        case category
        case type
        case price
        case quantity
    }
}

/// Typed Inttegro domain value.
public struct OrderShippingLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var shipping: OrderShippingLineItemShipping

    public init(
        type: String,
        shipping: OrderShippingLineItemShipping
    ) {
        self.type = type
        self.shipping = shipping
    }
}

/// Typed Inttegro domain value.
public struct OrderShippingLineItemShipping: Codable, Sendable, Equatable {
    public var id: String
    public var taxCode: String?
    public var label: String?
    public var fee: Amount

    public init(
        id: String,
        taxCode: String? = nil,
        label: String? = nil,
        fee: Amount
    ) {
        self.id = id
        self.taxCode = taxCode
        self.label = label
        self.fee = fee
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case taxCode = "tax_code"
        case label
        case fee
    }
}

/// Typed Inttegro request parameters.
public struct PageBalanceTransactionsRequest: Codable, Sendable, Equatable {
    public var pageNumber: Int
    public var pageSize: Int

    public init(
        pageNumber: Int,
        pageSize: Int
    ) {
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

/// Typed Inttegro request parameters.
public struct PageChimesRequest: Codable, Sendable, Equatable {
    public var customerId: String?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var recipient: String?

    public init(
        customerId: String? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil,
        recipient: String? = nil
    ) {
        self.customerId = customerId
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.recipient = recipient
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case recipient
    }
}

/// Typed Inttegro request parameters.
public struct PageCustomersRequest: Codable, Sendable, Equatable {
    public var pageSize: Int?
    public var pageNumber: Int

    public init(
        pageSize: Int? = nil,
        pageNumber: Int
    ) {
        self.pageSize = pageSize
        self.pageNumber = pageNumber
    }

    private enum CodingKeys: String, CodingKey {
        case pageSize = "page_size"
        case pageNumber = "page_number"
    }
}

/// Typed Inttegro request parameters.
public struct PageFileLinksRequest: Codable, Sendable, Equatable {
    public var fileId: String?
    public var status: FileLinkStatus?
    public var pageNumber: Int?
    public var pageSize: Int?

    public init(
        fileId: String? = nil,
        status: FileLinkStatus? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil
    ) {
        self.fileId = fileId
        self.status = status
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
        case status
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

/// Typed Inttegro request parameters.
public struct PageFilesRequest: Codable, Sendable, Equatable {
    public var purpose: String?
    public var status: FileStatus?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var createdAfter: Date?
    public var createdBefore: Date?

    public init(
        purpose: String? = nil,
        status: FileStatus? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil,
        createdAfter: Date? = nil,
        createdBefore: Date? = nil
    ) {
        self.purpose = purpose
        self.status = status
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.createdAfter = createdAfter
        self.createdBefore = createdBefore
    }

    private enum CodingKeys: String, CodingKey {
        case purpose
        case status
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case createdAfter = "created_after"
        case createdBefore = "created_before"
    }
}

/// Typed Inttegro request parameters.
public struct PageMessageTemplatesRequest: Codable, Sendable, Equatable {
    public var page: Int?
    public var size: Int?
    public var status: MessageTemplateStatus?
    public var channel: MessageTemplateChannel?
    public var purpose: String?
    public var locale: String?

    public init(
        page: Int? = nil,
        size: Int? = nil,
        status: MessageTemplateStatus? = nil,
        channel: MessageTemplateChannel? = nil,
        purpose: String? = nil,
        locale: String? = nil
    ) {
        self.page = page
        self.size = size
        self.status = status
        self.channel = channel
        self.purpose = purpose
        self.locale = locale
    }
}

/// Typed Inttegro request parameters.
public struct PageOrdersRequest: Codable, Sendable, Equatable {
    public var pageNumber: Int?
    public var customerId: String?
    public var pageSize: Int

    public init(
        pageNumber: Int? = nil,
        customerId: String? = nil,
        pageSize: Int
    ) {
        self.pageNumber = pageNumber
        self.customerId = customerId
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case customerId = "customer_id"
        case pageSize = "page_size"
    }
}

/// Typed Inttegro request parameters.
public struct PagePayoutsRequest: Codable, Sendable, Equatable {
    public var pageSize: Int?
    public var pageNumber: Int

    public init(
        pageSize: Int? = nil,
        pageNumber: Int
    ) {
        self.pageSize = pageSize
        self.pageNumber = pageNumber
    }

    private enum CodingKeys: String, CodingKey {
        case pageSize = "page_size"
        case pageNumber = "page_number"
    }
}

/// Typed Inttegro request parameters.
public struct PageProductsRequest: Codable, Sendable, Equatable {
    public var pageSize: Int?
    public var pageNumber: Int

    public init(
        pageSize: Int? = nil,
        pageNumber: Int
    ) {
        self.pageSize = pageSize
        self.pageNumber = pageNumber
    }

    private enum CodingKeys: String, CodingKey {
        case pageSize = "page_size"
        case pageNumber = "page_number"
    }
}

/// Typed Inttegro request parameters.
public struct PagePurchaseIntentsRequest: Codable, Sendable, Equatable {
    public var pageNumber: Int
    public var pageSize: Int

    public init(
        pageNumber: Int,
        pageSize: Int
    ) {
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

/// Typed Inttegro request parameters.
public struct PageRefundsRequest: Codable, Sendable, Equatable {
    public var pageSize: Int?
    public var pageNumber: Int

    public init(
        pageSize: Int? = nil,
        pageNumber: Int
    ) {
        self.pageSize = pageSize
        self.pageNumber = pageNumber
    }

    private enum CodingKeys: String, CodingKey {
        case pageSize = "page_size"
        case pageNumber = "page_number"
    }
}

/// Typed Inttegro request parameters.
public struct PageSecretKeysRequest: Codable, Sendable, Equatable {
    public var page: Int?
    public var number: Int?
    public var size: Int?

    public init(
        page: Int? = nil,
        number: Int? = nil,
        size: Int? = nil
    ) {
        self.page = page
        self.number = number
        self.size = size
    }
}

/// Typed Inttegro request parameters.
public struct PageUploadRequestsRequest: Codable, Sendable, Equatable {
    public var purpose: String?
    public var status: UploadRequestStatus?
    public var resource: FileResourceInput?
    public var pageNumber: Int?
    public var pageSize: Int?

    public init(
        purpose: String? = nil,
        status: UploadRequestStatus? = nil,
        resource: FileResourceInput? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil
    ) {
        self.purpose = purpose
        self.status = status
        self.resource = resource
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case purpose
        case status
        case resource
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

/// Typed Inttegro request parameters.
public struct PayOrderRequest: Codable, Sendable, Equatable {
    public var paymentMethodData: PaymentMethodDataInput?
    public var paymentMethodId: String?
    public var paidOutOfBand: Bool?
    public var orderId: String

    public init(
        paymentMethodData: PaymentMethodDataInput? = nil,
        paymentMethodId: String? = nil,
        paidOutOfBand: Bool? = nil,
        orderId: String
    ) {
        self.paymentMethodData = paymentMethodData
        self.paymentMethodId = paymentMethodId
        self.paidOutOfBand = paidOutOfBand
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodData = "payment_method_data"
        case paymentMethodId = "payment_method_id"
        case paidOutOfBand = "paid_out_of_band"
        case orderId = "order_id"
    }
}

/// Typed Inttegro domain value.
public struct Payment: Codable, Sendable, Equatable {
    public var id: String
    public var status: PaymentStatus
    public var statementDescriptor: String
    public var amount: Amount
    public var balanceTransaction: BalanceTransaction?
    public var paymentMethod: PaymentMethodSnapshot?
    public var billingDetails: PaymentBillingDetails?
    public var customer: OrderCustomer?
    public var latestAttempt: PaymentAttempt?
    public var nextAction: PaymentNextAction?
    public var latestError: PaymentError?
    public var initiatedAt: Date
    public var executedAt: Date?
    public var paidAt: Date?
    public var canceledAt: Date?
    public var dueAt: Date?
    public var expiredAt: Date?
    public var failedAt: Date?
    public var paidOffline: Bool?
    public var paymentMethodTypes: [String]?
    public var payoutConfiguration: PaymentPayoutConfiguration?

    public init(
        id: String,
        status: PaymentStatus,
        statementDescriptor: String,
        amount: Amount,
        balanceTransaction: BalanceTransaction? = nil,
        paymentMethod: PaymentMethodSnapshot? = nil,
        billingDetails: PaymentBillingDetails? = nil,
        customer: OrderCustomer? = nil,
        latestAttempt: PaymentAttempt? = nil,
        nextAction: PaymentNextAction? = nil,
        latestError: PaymentError? = nil,
        initiatedAt: Date,
        executedAt: Date? = nil,
        paidAt: Date? = nil,
        canceledAt: Date? = nil,
        dueAt: Date? = nil,
        expiredAt: Date? = nil,
        failedAt: Date? = nil,
        paidOffline: Bool? = nil,
        paymentMethodTypes: [String]? = nil,
        payoutConfiguration: PaymentPayoutConfiguration? = nil
    ) {
        self.id = id
        self.status = status
        self.statementDescriptor = statementDescriptor
        self.amount = amount
        self.balanceTransaction = balanceTransaction
        self.paymentMethod = paymentMethod
        self.billingDetails = billingDetails
        self.customer = customer
        self.latestAttempt = latestAttempt
        self.nextAction = nextAction
        self.latestError = latestError
        self.initiatedAt = initiatedAt
        self.executedAt = executedAt
        self.paidAt = paidAt
        self.canceledAt = canceledAt
        self.dueAt = dueAt
        self.expiredAt = expiredAt
        self.failedAt = failedAt
        self.paidOffline = paidOffline
        self.paymentMethodTypes = paymentMethodTypes
        self.payoutConfiguration = payoutConfiguration
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case status
        case statementDescriptor = "statement_descriptor"
        case amount
        case balanceTransaction = "balance_transaction"
        case paymentMethod = "payment_method"
        case billingDetails = "billing_details"
        case customer
        case latestAttempt = "latest_attempt"
        case nextAction = "next_action"
        case latestError = "latest_error"
        case initiatedAt = "initiated_at"
        case executedAt = "executed_at"
        case paidAt = "paid_at"
        case canceledAt = "canceled_at"
        case dueAt = "due_at"
        case expiredAt = "expired_at"
        case failedAt = "failed_at"
        case paidOffline = "paid_offline"
        case paymentMethodTypes = "payment_method_types"
        case payoutConfiguration = "payout_configuration"
    }
}

/// Typed Inttegro domain value.
public struct PaymentAttempt: Codable, Sendable, Equatable {
    public var paymentMethodType: String?
    public var paymentMethodId: String?
    public var error: PaymentAttemptError?
    public var reference: String?
    public var status: PaymentAttemptStatus
    public var initiatedAt: Date
    public var succeededAt: Date?

    public init(
        paymentMethodType: String? = nil,
        paymentMethodId: String? = nil,
        error: PaymentAttemptError? = nil,
        reference: String? = nil,
        status: PaymentAttemptStatus,
        initiatedAt: Date,
        succeededAt: Date? = nil
    ) {
        self.paymentMethodType = paymentMethodType
        self.paymentMethodId = paymentMethodId
        self.error = error
        self.reference = reference
        self.status = status
        self.initiatedAt = initiatedAt
        self.succeededAt = succeededAt
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodType = "payment_method_type"
        case paymentMethodId = "payment_method_id"
        case error
        case reference
        case status
        case initiatedAt = "initiated_at"
        case succeededAt = "succeeded_at"
    }
}

public struct PaymentAttemptError: Codable, Sendable, Equatable {
    public var message: String
    public init(message: String) { self.message = message }
}

public struct PaymentBillingDetails: Codable, Sendable, Equatable {
    public var owner: PaymentMethodSnapshotOwner?
    public init(owner: PaymentMethodSnapshotOwner? = nil) { self.owner = owner }
}

public struct PaymentError: Codable, Sendable, Equatable {
    public var message: String
    public var docsUrl: String
    public var source: String
    public var type: String
    public var code: String

    public init(message: String, docsUrl: String, source: String, type: String, code: String) {
        self.message = message
        self.docsUrl = docsUrl
        self.source = source
        self.type = type
        self.code = code
    }

    private enum CodingKeys: String, CodingKey {
        case message
        case docsUrl = "docs_url"
        case source
        case type
        case code
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethod: Codable, Sendable, Equatable {
    public var active: Bool
    public var archivedAt: Date?
    public var bankAccount: PaymentMethodBankAccount?
    public var card: PaymentMethodCard?
    public var createdAt: Date
    public var customData: CustomData?
    public var customerId: String
    public var ephemeral: Bool?
    public var expiresOn: Date?
    public var id: String
    public var mobileMoney: PaymentMethodMobileMoney?
    public var owner: PaymentMethodOwner?
    public var type: PaymentMethodType
    public var supplied: PaymentMethodSupplied?
    public var verification: PaymentMethodVerification?
    public var verifiedAt: Date?

    public init(
        active: Bool,
        archivedAt: Date? = nil,
        bankAccount: PaymentMethodBankAccount? = nil,
        card: PaymentMethodCard? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        customerId: String,
        ephemeral: Bool? = nil,
        expiresOn: Date? = nil,
        id: String,
        mobileMoney: PaymentMethodMobileMoney? = nil,
        owner: PaymentMethodOwner? = nil,
        type: PaymentMethodType,
        supplied: PaymentMethodSupplied? = nil,
        verification: PaymentMethodVerification? = nil,
        verifiedAt: Date? = nil
    ) {
        self.active = active
        self.archivedAt = archivedAt
        self.bankAccount = bankAccount
        self.card = card
        self.createdAt = createdAt
        self.customData = customData
        self.customerId = customerId
        self.ephemeral = ephemeral
        self.expiresOn = expiresOn
        self.id = id
        self.mobileMoney = mobileMoney
        self.owner = owner
        self.type = type
        self.supplied = supplied
        self.verification = verification
        self.verifiedAt = verifiedAt
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case archivedAt = "archived_at"
        case bankAccount = "bank_account"
        case card
        case createdAt = "created_at"
        case customData = "custom_data"
        case customerId = "customer_id"
        case ephemeral
        case expiresOn = "expires_on"
        case id
        case mobileMoney = "mobile_money"
        case owner
        case type
        case supplied
        case verification
        case verifiedAt = "verified_at"
    }
}

public struct PaymentMethodCard: Codable, Sendable, Equatable { public init() {} }

/// Typed Inttegro domain value.
public struct PaymentMethodBankAccount: Codable, Sendable, Equatable {
    public var ghanaBankAccount: PaymentMethodBankAccountGhanaBankAccount?
    public var type: BankAccountType

    public init(
        ghanaBankAccount: PaymentMethodBankAccountGhanaBankAccount? = nil,
        type: BankAccountType
    ) {
        self.ghanaBankAccount = ghanaBankAccount
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case ghanaBankAccount = "ghana_bank_account"
        case type
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodBankAccountGhanaBankAccount: Codable, Sendable, Equatable {
    public var branch: String?
    public var name: String?
    public var accountNumber: String
    public var sortCode: String?
    public var swiftCode: String?

    public init(
        branch: String? = nil,
        name: String? = nil,
        accountNumber: String,
        sortCode: String? = nil,
        swiftCode: String? = nil
    ) {
        self.branch = branch
        self.name = name
        self.accountNumber = accountNumber
        self.sortCode = sortCode
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case branch
        case name
        case accountNumber = "account_number"
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
    }
}

/// Typed Inttegro request parameters.
public struct PaymentMethodDataInput: Codable, Sendable, Equatable {
    public var mobileMoney: PaymentMethodDataInputMobileMoney?
    public var type: PaymentMethodType

    public init(
        mobileMoney: PaymentMethodDataInputMobileMoney? = nil,
        type: PaymentMethodType
    ) {
        self.mobileMoney = mobileMoney
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case mobileMoney = "mobile_money"
        case type
    }
}

/// Typed Inttegro request parameters.
public struct PaymentMethodDataInputMobileMoney: Codable, Sendable, Equatable {
    public var network: MobileMoneyNetwork
    public var accountNumber: String

    public init(
        network: MobileMoneyNetwork,
        accountNumber: String
    ) {
        self.network = network
        self.accountNumber = accountNumber
    }

    private enum CodingKeys: String, CodingKey {
        case network
        case accountNumber = "account_number"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodDeletion: Codable, Sendable, Equatable {
    public var deleted: Bool
    public var paymentMethodId: String

    public init(
        deleted: Bool,
        paymentMethodId: String
    ) {
        self.deleted = deleted
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case deleted
        case paymentMethodId = "payment_method_id"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodMobileMoney: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var last4: String
    public var network: MobileMoneyNetwork

    public init(
        accountNumber: String,
        last4: String,
        network: MobileMoneyNetwork
    ) {
        self.accountNumber = accountNumber
        self.last4 = last4
        self.network = network
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case last4
        case network
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodOwner: Codable, Sendable, Equatable {
    public var address: PaymentMethodOwnerAddress?
    public var name: String

    public init(
        address: PaymentMethodOwnerAddress? = nil,
        name: String
    ) {
        self.address = address
        self.name = name
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodOwnerAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var country: String
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phoneNumber: String?
    public var postCode: String?
    public var region: String?

    public init(
        city: String? = nil,
        country: String,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        postCode: String? = nil,
        region: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phoneNumber = phoneNumber
        self.postCode = postCode
        self.region = region
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case country
        case line1 = "line_1"
        case line2 = "line_2"
        case name
        case phoneNumber = "phone_number"
        case postCode = "post_code"
        case region
    }
}

/// Typed Inttegro request parameters.
public struct PaymentMethodOwnerInput: Codable, Sendable, Equatable {
    public var address: PaymentMethodOwnerInputAddress
    public var name: String

    public init(
        address: PaymentMethodOwnerInputAddress,
        name: String
    ) {
        self.address = address
        self.name = name
    }
}

/// Typed Inttegro request parameters.
public struct PaymentMethodOwnerInputAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phoneNumber: String?
    public var postCode: String?
    public var region: String?
    public var country: String

    public init(
        city: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        postCode: String? = nil,
        region: String? = nil,
        country: String
    ) {
        self.city = city
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phoneNumber = phoneNumber
        self.postCode = postCode
        self.region = region
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case line1
        case line2
        case name
        case phoneNumber = "phone_number"
        case postCode = "post_code"
        case region
        case country
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodPage: Codable, Sendable, Equatable {
    public var number: Int
    public var paymentMethods: [PaymentMethod]
    public var size: Int

    public init(
        number: Int,
        paymentMethods: [PaymentMethod],
        size: Int
    ) {
        self.number = number
        self.paymentMethods = paymentMethods
        self.size = size
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case paymentMethods = "payment_methods"
        case size
    }
}

/// Typed Inttegro request parameters.
public struct PaymentMethodPageRequest: Codable, Sendable, Equatable {
    public var customerId: String?
    public var pageNumber: Int?
    public var pageSize: Int?

    public init(
        customerId: String? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil
    ) {
        self.customerId = customerId
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodSettings: Codable, Sendable, Equatable {
    public var mobileMoney: PaymentMethodTypeSetting?
    public var bankAccount: PaymentMethodTypeSetting?
    public var card: PaymentMethodTypeSetting?
    public var motito: PaymentMethodTypeSetting?

    public init(
        mobileMoney: PaymentMethodTypeSetting? = nil,
        bankAccount: PaymentMethodTypeSetting? = nil,
        card: PaymentMethodTypeSetting? = nil,
        motito: PaymentMethodTypeSetting? = nil
    ) {
        self.mobileMoney = mobileMoney
        self.bankAccount = bankAccount
        self.card = card
        self.motito = motito
    }

    private enum CodingKeys: String, CodingKey {
        case mobileMoney = "mobile_money"
        case bankAccount = "bank_account"
        case card
        case motito
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshot: Codable, Sendable, Equatable {
    public var id: String
    public var bankAccount: PaymentMethodSnapshotBankAccount?
    public var card: PaymentMethodCard?
    public var createdAt: Date
    public var customerId: String
    public var mobileMoney: PaymentMethodSnapshotMobileMoney?
    public var owner: PaymentMethodSnapshotOwner?
    public var type: PaymentMethodType
    public var verified: Bool
    public var verifiedAt: Date?

    public init(
        id: String,
        bankAccount: PaymentMethodSnapshotBankAccount? = nil,
        card: PaymentMethodCard? = nil,
        createdAt: Date,
        customerId: String,
        mobileMoney: PaymentMethodSnapshotMobileMoney? = nil,
        owner: PaymentMethodSnapshotOwner? = nil,
        type: PaymentMethodType,
        verified: Bool,
        verifiedAt: Date? = nil
    ) {
        self.id = id
        self.bankAccount = bankAccount
        self.card = card
        self.createdAt = createdAt
        self.customerId = customerId
        self.mobileMoney = mobileMoney
        self.owner = owner
        self.type = type
        self.verified = verified
        self.verifiedAt = verifiedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case bankAccount = "bank_account"
        case card
        case createdAt = "created_at"
        case customerId = "customer_id"
        case mobileMoney = "mobile_money"
        case owner
        case type
        case verified
        case verifiedAt = "verified_at"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotBankAccount: Codable, Sendable, Equatable {
    public var type: String
    public var ghanaBankAccount: PaymentMethodSnapshotGhanaBankAccount?

    public init(
        type: String,
        ghanaBankAccount: PaymentMethodSnapshotGhanaBankAccount? = nil
    ) {
        self.type = type
        self.ghanaBankAccount = ghanaBankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case ghanaBankAccount = "ghana_bank_account"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotGhanaBankAccount: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var branch: String?
    public var name: String?
    public var sortCode: String?
    public var swiftCode: String?

    public init(
        accountNumber: String,
        branch: String? = nil,
        name: String? = nil,
        sortCode: String? = nil,
        swiftCode: String? = nil
    ) {
        self.accountNumber = accountNumber
        self.branch = branch
        self.name = name
        self.sortCode = sortCode
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case branch
        case name
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotMobileMoney: Codable, Sendable, Equatable {
    public var network: MobileMoneyNetwork
    public var accountNumber: String
    public var last4: String

    public init(
        network: MobileMoneyNetwork,
        accountNumber: String,
        last4: String
    ) {
        self.network = network
        self.accountNumber = accountNumber
        self.last4 = last4
    }

    private enum CodingKeys: String, CodingKey {
        case network
        case accountNumber = "account_number"
        case last4
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotOwner: Codable, Sendable, Equatable {
    public var name: String
    public var address: OrderAddress?

    public init(
        name: String,
        address: OrderAddress? = nil
    ) {
        self.name = name
        self.address = address
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodSupplied: Codable, Sendable, Equatable {
    public var attemptId: String?
    public var by: String
    public var channel: String?
    public var resourceId: String?
    public var resourceType: String?
    public var suppliedAt: Date

    public init(
        attemptId: String? = nil,
        by: String,
        channel: String? = nil,
        resourceId: String? = nil,
        resourceType: String? = nil,
        suppliedAt: Date
    ) {
        self.attemptId = attemptId
        self.by = by
        self.channel = channel
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.suppliedAt = suppliedAt
    }

    private enum CodingKeys: String, CodingKey {
        case attemptId = "attempt_id"
        case by
        case channel
        case resourceId = "resource_id"
        case resourceType = "resource_type"
        case suppliedAt = "supplied_at"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodTypeSetting: Codable, Sendable, Equatable {
    public var type: PaymentMethodType?
    public var name: String?
    public var description: String?
    public var enabled: Bool
    public var confirmsUse: Bool

    public init(
        type: PaymentMethodType? = nil,
        name: String? = nil,
        description: String? = nil,
        enabled: Bool,
        confirmsUse: Bool
    ) {
        self.type = type
        self.name = name
        self.description = description
        self.enabled = enabled
        self.confirmsUse = confirmsUse
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case name
        case description
        case enabled
        case confirmsUse = "confirms_use"
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodVerification: Codable, Sendable, Equatable {
    public var completedAt: Date?
    public var initiatedAt: Date
    public var mechanism: String?
    public var requestId: String
    public var type: String

    public init(
        completedAt: Date? = nil,
        initiatedAt: Date,
        mechanism: String? = nil,
        requestId: String,
        type: String
    ) {
        self.completedAt = completedAt
        self.initiatedAt = initiatedAt
        self.mechanism = mechanism
        self.requestId = requestId
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case completedAt = "completed_at"
        case initiatedAt = "initiated_at"
        case mechanism
        case requestId = "request_id"
        case type
    }
}

/// Typed Inttegro domain value.
public struct PaymentMethodVerificationSession: Codable, Sendable, Equatable {
    public var paymentMethodId: String
    public var status: String
    public var tokenSentAt: Date?
    public var expiresAt: Date?
    public var delivery: PaymentMethodVerificationDelivery?

    public init(
        paymentMethodId: String,
        status: String,
        tokenSentAt: Date? = nil,
        expiresAt: Date? = nil,
        delivery: PaymentMethodVerificationDelivery? = nil
    ) {
        self.paymentMethodId = paymentMethodId
        self.status = status
        self.tokenSentAt = tokenSentAt
        self.expiresAt = expiresAt
        self.delivery = delivery
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
        case status
        case tokenSentAt = "token_sent_at"
        case expiresAt = "expires_at"
        case delivery
    }
}

public struct PaymentMethodVerificationDelivery: Codable, Sendable, Equatable {
    public var recipient: String?
    public var channel: String?
    public var senderId: String?

    public init(recipient: String? = nil, channel: String? = nil, senderId: String? = nil) {
        self.recipient = recipient
        self.channel = channel
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case recipient
        case channel
        case senderId = "sender_id"
    }
}

/// Typed Inttegro domain value.
public struct PaymentNextAction: Codable, Sendable, Equatable {
    public var type: PaymentNextActionType
    public var confirmPayment: PaymentNextActionConfirmPayment?
    public var redirect: PaymentNextActionRedirect?
    public var authorize: PaymentNextActionAuthorize?
    public var requestConfirmation: PaymentNextActionRequestConfirmation?

    public init(
        type: PaymentNextActionType,
        confirmPayment: PaymentNextActionConfirmPayment? = nil,
        redirect: PaymentNextActionRedirect? = nil,
        authorize: PaymentNextActionAuthorize? = nil,
        requestConfirmation: PaymentNextActionRequestConfirmation? = nil
    ) {
        self.type = type
        self.confirmPayment = confirmPayment
        self.redirect = redirect
        self.authorize = authorize
        self.requestConfirmation = requestConfirmation
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case confirmPayment = "confirm_payment"
        case redirect
        case authorize
        case requestConfirmation = "request_confirmation"
    }
}

/// Typed Inttegro domain value.
public struct PaymentNextActionAuthorize: Codable, Sendable, Equatable {
    public var beneficiary: String
    public var scheme: String
    public var expiresAt: Date

    public init(
        beneficiary: String,
        scheme: String,
        expiresAt: Date
    ) {
        self.beneficiary = beneficiary
        self.scheme = scheme
        self.expiresAt = expiresAt
    }

    private enum CodingKeys: String, CodingKey {
        case beneficiary
        case scheme
        case expiresAt = "expires_at"
    }
}

/// Typed Inttegro domain value.
public struct PaymentNextActionConfirmPayment: Codable, Sendable, Equatable {
    public var expiresAt: Date
    public var scheme: String
    public var request: PaymentNextActionConfirmPaymentRequest?
    public var attempt: PaymentNextActionConfirmPaymentAttempt?
    public var confirmed: Bool
    public var status: String

    public init(
        expiresAt: Date,
        scheme: String,
        request: PaymentNextActionConfirmPaymentRequest? = nil,
        attempt: PaymentNextActionConfirmPaymentAttempt? = nil,
        confirmed: Bool,
        status: String
    ) {
        self.expiresAt = expiresAt
        self.scheme = scheme
        self.request = request
        self.attempt = attempt
        self.confirmed = confirmed
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case expiresAt = "expires_at"
        case scheme
        case request
        case attempt
        case confirmed
        case status
    }
}

/// Typed Inttegro domain value.
public struct PaymentNextActionConfirmPaymentAttempt: Codable, Sendable, Equatable {
    public var status: String
    public var confirmed: Bool
    public var reason: String
    public var executedAt: Date?
    public var createdAt: Date

    public init(
        status: String,
        confirmed: Bool,
        reason: String,
        executedAt: Date? = nil,
        createdAt: Date
    ) {
        self.status = status
        self.confirmed = confirmed
        self.reason = reason
        self.executedAt = executedAt
        self.createdAt = createdAt
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case confirmed
        case reason
        case executedAt = "executed_at"
        case createdAt = "created_at"
    }
}

/// Typed Inttegro domain value.
public struct PaymentNextActionConfirmPaymentRequest: Codable, Sendable, Equatable {
    public var id: String
    public var recipient: String
    public var sentVia: PaymentConfirmationChannel
    public var tokenSize: Int
    public var senderId: String
    public var status: String?

    public init(
        id: String,
        recipient: String,
        sentVia: PaymentConfirmationChannel,
        tokenSize: Int,
        senderId: String,
        status: String? = nil
    ) {
        self.id = id
        self.recipient = recipient
        self.sentVia = sentVia
        self.tokenSize = tokenSize
        self.senderId = senderId
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case recipient
        case sentVia = "sent_via"
        case tokenSize = "token_size"
        case senderId = "sender_id"
        case status
    }
}

/// Typed Inttegro domain value.
public struct PaymentNextActionRedirect: Codable, Sendable, Equatable {
    public var redirectUrl: String
    public var validUntil: Date
    public var latestVisit: PaymentNextActionRedirectLatestVisit?

    public init(
        redirectUrl: String,
        validUntil: Date,
        latestVisit: PaymentNextActionRedirectLatestVisit? = nil
    ) {
        self.redirectUrl = redirectUrl
        self.validUntil = validUntil
        self.latestVisit = latestVisit
    }

    private enum CodingKeys: String, CodingKey {
        case redirectUrl = "redirect_url"
        case validUntil = "valid_until"
        case latestVisit = "latest_visit"
    }
}

/// Typed Inttegro domain value.
public struct PaymentNextActionRedirectLatestVisit: Codable, Sendable, Equatable {
    public var userAgent: String
    public var ipAddress: String
    public var at: Date

    public init(
        userAgent: String,
        ipAddress: String,
        at: Date
    ) {
        self.userAgent = userAgent
        self.ipAddress = ipAddress
        self.at = at
    }

    private enum CodingKeys: String, CodingKey {
        case userAgent = "user_agent"
        case ipAddress = "ip_address"
        case at
    }
}

public struct PaymentNextActionRequestConfirmation: Codable, Sendable, Equatable {
    public var lastRequest: PaymentNextActionConfirmPaymentRequest?
    public var after: Date?

    public init(lastRequest: PaymentNextActionConfirmPaymentRequest? = nil, after: Date? = nil) {
        self.lastRequest = lastRequest
        self.after = after
    }

    private enum CodingKeys: String, CodingKey {
        case lastRequest = "last_request"
        case after
    }
}

/// Typed Inttegro domain value.
public struct PaymentPayoutConfiguration: Codable, Sendable, Equatable {
    public var enableFx: Bool
    public var destination: PaymentPayoutConfigurationDestination

    public init(
        enableFx: Bool,
        destination: PaymentPayoutConfigurationDestination
    ) {
        self.enableFx = enableFx
        self.destination = destination
    }

    private enum CodingKeys: String, CodingKey {
        case enableFx = "enable_fx"
        case destination
    }
}

/// Typed Inttegro domain value.
public struct PaymentPayoutConfigurationDestination: Codable, Sendable, Equatable {
    public var financialAccountId: String

    public init(
        financialAccountId: String
    ) {
        self.financialAccountId = financialAccountId
    }

    private enum CodingKeys: String, CodingKey {
        case financialAccountId = "financial_account_id"
    }
}

/// Typed Inttegro domain value.
public struct Payout: Codable, Sendable, Equatable {
    public var amount: Amount?
    public var balanceTransactions: [String]?
    public var canceledAt: Date?
    public var customData: CustomData?
    public var destinationId: String
    public var error: PayoutError?
    public var executeAfter: Date
    public var executedBy: String?
    public var expectedAt: Date?
    public var failedAt: Date?
    public var id: String
    public var initiatedAt: Date
    public var initiatedBy: String?
    public var maxAmount: Amount
    public var reference: String?
    public var scheduleId: String?
    public var scheduledAt: Date?
    public var scheduledBy: String?
    public var sentAt: Date?
    public var sourceId: String?
    public var status: PayoutStatus
    public var succeededAt: Date?

    public init(
        amount: Amount? = nil,
        balanceTransactions: [String]? = nil,
        canceledAt: Date? = nil,
        customData: CustomData? = nil,
        destinationId: String,
        error: PayoutError? = nil,
        executeAfter: Date,
        executedBy: String? = nil,
        expectedAt: Date? = nil,
        failedAt: Date? = nil,
        id: String,
        initiatedAt: Date,
        initiatedBy: String? = nil,
        maxAmount: Amount,
        reference: String? = nil,
        scheduleId: String? = nil,
        scheduledAt: Date? = nil,
        scheduledBy: String? = nil,
        sentAt: Date? = nil,
        sourceId: String? = nil,
        status: PayoutStatus,
        succeededAt: Date? = nil
    ) {
        self.amount = amount
        self.balanceTransactions = balanceTransactions
        self.canceledAt = canceledAt
        self.customData = customData
        self.destinationId = destinationId
        self.error = error
        self.executeAfter = executeAfter
        self.executedBy = executedBy
        self.expectedAt = expectedAt
        self.failedAt = failedAt
        self.id = id
        self.initiatedAt = initiatedAt
        self.initiatedBy = initiatedBy
        self.maxAmount = maxAmount
        self.reference = reference
        self.scheduleId = scheduleId
        self.scheduledAt = scheduledAt
        self.scheduledBy = scheduledBy
        self.sentAt = sentAt
        self.sourceId = sourceId
        self.status = status
        self.succeededAt = succeededAt
    }

    private enum CodingKeys: String, CodingKey {
        case amount
        case balanceTransactions = "balance_transactions"
        case canceledAt = "canceled_at"
        case customData = "custom_data"
        case destinationId = "destination_id"
        case error
        case executeAfter = "execute_after"
        case executedBy = "executed_by"
        case expectedAt = "expected_at"
        case failedAt = "failed_at"
        case id
        case initiatedAt = "initiated_at"
        case initiatedBy = "initiated_by"
        case maxAmount = "max_amount"
        case reference
        case scheduleId = "schedule_id"
        case scheduledAt = "scheduled_at"
        case scheduledBy = "scheduled_by"
        case sentAt = "sent_at"
        case sourceId = "source_id"
        case status
        case succeededAt = "succeeded_at"
    }
}

/// Typed Inttegro domain value.
public struct PayoutError: Codable, Sendable, Equatable {
    public var cause: String
    public var message: String
    public var occurredAt: Date
    public var type: String

    public init(
        cause: String,
        message: String,
        occurredAt: Date,
        type: String
    ) {
        self.cause = cause
        self.message = message
        self.occurredAt = occurredAt
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case cause
        case message
        case occurredAt = "occurred_at"
        case type
    }
}

/// Typed Inttegro domain value.
public struct PayoutPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var payouts: [Payout]?

    public init(
        number: Int,
        size: Int,
        payouts: [Payout]? = nil
    ) {
        self.number = number
        self.size = size
        self.payouts = payouts
    }
}

/// Typed Inttegro domain value.
public struct PayoutSettingsLookup: Codable, Sendable, Equatable {
    public var destinations: PayoutDestinations
    public var fxEnabled: Bool?
    public var schedule: PayoutSettingsLookupSchedule?

    public init(
        destinations: PayoutDestinations,
        fxEnabled: Bool? = nil,
        schedule: PayoutSettingsLookupSchedule? = nil
    ) {
        self.destinations = destinations
        self.fxEnabled = fxEnabled
        self.schedule = schedule
    }

    private enum CodingKeys: String, CodingKey {
        case destinations
        case fxEnabled = "fx_enabled"
        case schedule
    }
}

/// Typed Inttegro domain value.
public struct PayoutSettingsLookupSchedule: Codable, Sendable, Equatable {
    public var agingSpec: PayoutSettingsLookupScheduleAgingSpec
    public var description: String
    public var interval: String
    public var name: String
    public var scheduleOn: String
    public var type: String

    public init(
        agingSpec: PayoutSettingsLookupScheduleAgingSpec,
        description: String,
        interval: String,
        name: String,
        scheduleOn: String,
        type: String
    ) {
        self.agingSpec = agingSpec
        self.description = description
        self.interval = interval
        self.name = name
        self.scheduleOn = scheduleOn
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case agingSpec = "aging_spec"
        case description
        case interval
        case name
        case scheduleOn = "schedule_on"
        case type
    }
}

/// Typed Inttegro domain value.
public struct PayoutSettingsLookupScheduleAgingSpec: Codable, Sendable, Equatable {
    public var abide: String
    public var label: String
    public var tPlus: String

    public init(
        abide: String,
        label: String,
        tPlus: String
    ) {
        self.abide = abide
        self.label = label
        self.tPlus = tPlus
    }

    private enum CodingKeys: String, CodingKey {
        case abide
        case label
        case tPlus = "t_plus"
    }
}

/// Typed Inttegro domain value.
public struct PayoutSettingsMutation: Codable, Sendable, Equatable {
    public var destinations: PayoutDestinations?
    public var id: String?
    public var schedule: PayoutSettingsMutationSchedule?

    public init(
        destinations: PayoutDestinations? = nil,
        id: String? = nil,
        schedule: PayoutSettingsMutationSchedule? = nil
    ) {
        self.destinations = destinations
        self.id = id
        self.schedule = schedule
    }
}

/// Typed Inttegro domain value.
public struct PayoutSettingsMutationSchedule: Codable, Sendable, Equatable {
    public var description: String
    public var id: String
    public var interval: String
    public var name: String
    public var scheduleOn: String
    public var spec: PayoutSettingsMutationScheduleSpec
    public var type: String

    public init(
        description: String,
        id: String,
        interval: String,
        name: String,
        scheduleOn: String,
        spec: PayoutSettingsMutationScheduleSpec,
        type: String
    ) {
        self.description = description
        self.id = id
        self.interval = interval
        self.name = name
        self.scheduleOn = scheduleOn
        self.spec = spec
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case id
        case interval
        case name
        case scheduleOn = "schedule_on"
        case spec
        case type
    }
}

/// Typed Inttegro domain value.
public struct PayoutSettingsMutationScheduleSpec: Codable, Sendable, Equatable {
    public var abide: String
    public var id: String
    public var label: String
    public var tPlus: String

    public init(
        abide: String,
        id: String,
        label: String,
        tPlus: String
    ) {
        self.abide = abide
        self.id = id
        self.label = label
        self.tPlus = tPlus
    }

    private enum CodingKeys: String, CodingKey {
        case abide
        case id
        case label
        case tPlus = "t_plus"
    }
}

/// Typed Inttegro domain value.
public struct Price: Codable, Sendable, Equatable {
    public var currency: Currency
    public var value: Int

    public init(
        currency: Currency,
        value: Int
    ) {
        self.currency = currency
        self.value = value
    }
}

/// Typed Inttegro request parameters.
public struct PriceActionRequest: Codable, Sendable, Equatable {
    public var priceId: String

    public init(
        priceId: String
    ) {
        self.priceId = priceId
    }

    private enum CodingKeys: String, CodingKey {
        case priceId = "price_id"
    }
}

/// Typed Inttegro domain value.
public struct PriceEmbeddedProduct: Codable, Sendable, Equatable {
    public var id: String
    public var about: String?
    public var active: Bool
    public var archivedAt: Date?
    public var attributes: [PriceEmbeddedProductAttributesItem]?
    public var category: String?
    public var createdAt: Date
    public var customData: CustomData?
    public var description: String?
    public var dimensions: ProductDimensions?
    public var media: ProductMedia?
    public var name: String
    public var publishedAt: Date?
    public var reference: String?
    public var shipment: ProductShipment?
    public var taxCode: String?
    public var type: ProductType
    public var unitDim: String?
    public var updatedAt: Date?

    public init(
        id: String,
        about: String? = nil,
        active: Bool,
        archivedAt: Date? = nil,
        attributes: [PriceEmbeddedProductAttributesItem]? = nil,
        category: String? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        description: String? = nil,
        dimensions: ProductDimensions? = nil,
        media: ProductMedia? = nil,
        name: String,
        publishedAt: Date? = nil,
        reference: String? = nil,
        shipment: ProductShipment? = nil,
        taxCode: String? = nil,
        type: ProductType,
        unitDim: String? = nil,
        updatedAt: Date? = nil
    ) {
        self.id = id
        self.about = about
        self.active = active
        self.archivedAt = archivedAt
        self.attributes = attributes
        self.category = category
        self.createdAt = createdAt
        self.customData = customData
        self.description = description
        self.dimensions = dimensions
        self.media = media
        self.name = name
        self.publishedAt = publishedAt
        self.reference = reference
        self.shipment = shipment
        self.taxCode = taxCode
        self.type = type
        self.unitDim = unitDim
        self.updatedAt = updatedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case about
        case active
        case archivedAt = "archived_at"
        case attributes
        case category
        case createdAt = "created_at"
        case customData = "custom_data"
        case description
        case dimensions
        case media
        case name
        case publishedAt = "published_at"
        case reference
        case shipment
        case taxCode = "tax_code"
        case type
        case unitDim = "unit_dim"
        case updatedAt = "updated_at"
    }
}

/// Typed Inttegro domain value.
public struct PriceEmbeddedProductAttributesItem: Codable, Sendable, Equatable {
    public var name: String
    public var value: String

    public init(
        name: String,
        value: String
    ) {
        self.name = name
        self.value = value
    }
}

/// Typed Inttegro domain value.
public struct PricePage: Codable, Sendable, Equatable {
    public var number: Int?
    public var size: Int?
    public var prices: [CatalogPrice]?

    public init(
        number: Int? = nil,
        size: Int? = nil,
        prices: [CatalogPrice]? = nil
    ) {
        self.number = number
        self.size = size
        self.prices = prices
    }
}

/// Typed Inttegro domain value.
public struct PricePageItem: Codable, Sendable, Equatable {
    public var id: String
    public var label: String?
    public var about: String?
    public var active: Bool
    public var nominal: Amount
    public var productId: String?
    public var product: PriceEmbeddedProduct?
    public var createdAt: Date
    public var updatedAt: Date?
    public var archivedAt: Date?

    public init(
        id: String,
        label: String? = nil,
        about: String? = nil,
        active: Bool,
        nominal: Amount,
        productId: String? = nil,
        product: PriceEmbeddedProduct? = nil,
        createdAt: Date,
        updatedAt: Date? = nil,
        archivedAt: Date? = nil
    ) {
        self.id = id
        self.label = label
        self.about = about
        self.active = active
        self.nominal = nominal
        self.productId = productId
        self.product = product
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.archivedAt = archivedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case about
        case active
        case nominal
        case productId = "product_id"
        case product
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case archivedAt = "archived_at"
    }
}

/// Typed Inttegro request parameters.
public struct PricePageRequest: Codable, Sendable, Equatable {
    public var pageNumber: Int?
    public var pageSize: Int?
    public var productId: String?

    public init(
        pageNumber: Int? = nil,
        pageSize: Int? = nil,
        productId: String? = nil
    ) {
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.productId = productId
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case productId = "product_id"
    }
}

/// Typed Inttegro request parameters.
public struct PriceParams: Codable, Sendable, Equatable {
    public var currency: Currency
    public var value: Int

    public init(
        currency: Currency,
        value: Int
    ) {
        self.currency = currency
        self.value = value
    }
}

/// Typed Inttegro domain value.
public struct Product: Codable, Sendable, Equatable {
    public var id: String
    public var type: ProductType
    public var reference: String?
    public var name: String
    public var description: String?
    public var about: String?
    public var taxCode: String?
    public var category: String?
    public var prices: [ProductPriceSummary]?
    public var shipment: ProductShipment?
    public var media: ProductMedia?
    public var attributes: [ProductAttribute]?
    public var dimensions: ProductDimensions?
    public var customData: CustomData?
    public var active: Bool
    public var createdAt: Date
    public var updatedAt: Date?
    public var archivedAt: Date?
    public var publishedAt: Date?
    public var unitDim: String?

    public init(
        id: String,
        type: ProductType,
        reference: String? = nil,
        name: String,
        description: String? = nil,
        about: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        prices: [ProductPriceSummary]? = nil,
        shipment: ProductShipment? = nil,
        media: ProductMedia? = nil,
        attributes: [ProductAttribute]? = nil,
        dimensions: ProductDimensions? = nil,
        customData: CustomData? = nil,
        active: Bool,
        createdAt: Date,
        updatedAt: Date? = nil,
        archivedAt: Date? = nil,
        publishedAt: Date? = nil,
        unitDim: String? = nil
    ) {
        self.id = id
        self.type = type
        self.reference = reference
        self.name = name
        self.description = description
        self.about = about
        self.taxCode = taxCode
        self.category = category
        self.prices = prices
        self.shipment = shipment
        self.media = media
        self.attributes = attributes
        self.dimensions = dimensions
        self.customData = customData
        self.active = active
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.archivedAt = archivedAt
        self.publishedAt = publishedAt
        self.unitDim = unitDim
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case reference
        case name
        case description
        case about
        case taxCode = "tax_code"
        case category
        case prices
        case shipment
        case media
        case attributes
        case dimensions
        case customData = "custom_data"
        case active
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case archivedAt = "archived_at"
        case publishedAt = "published_at"
        case unitDim = "unit_dim"
    }
}

/// Typed Inttegro request parameters.
public struct ProductActionRequest: Codable, Sendable, Equatable {
    public var productId: String

    public init(
        productId: String
    ) {
        self.productId = productId
    }

    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
    }
}

/// Typed Inttegro domain value.
public struct ProductAttribute: Codable, Sendable, Equatable {
    public var name: String
    public var value: String

    public init(
        name: String,
        value: String
    ) {
        self.name = name
        self.value = value
    }
}

/// Typed Inttegro request parameters.
public struct ProductAttributeInput: Codable, Sendable, Equatable {
    public var name: String
    public var value: String

    public init(
        name: String,
        value: String
    ) {
        self.name = name
        self.value = value
    }
}

/// Typed Inttegro domain value.
public struct ProductDimensions: Codable, Sendable, Equatable {
    public var physical: ProductDimensionsPhysical?
    public var digital: ProductDimensionsDigital?
    public var custom: ProductDimensionsCustom?

    public init(
        physical: ProductDimensionsPhysical? = nil,
        digital: ProductDimensionsDigital? = nil,
        custom: ProductDimensionsCustom? = nil
    ) {
        self.physical = physical
        self.digital = digital
        self.custom = custom
    }
}

/// Typed Inttegro domain value.
public struct ProductDimensionsCustom: Codable, Sendable, Equatable {
    public var sizeUnit: String?
    public var size: Double?
    public var details: ProductDimensionDetails?

    public init(
        sizeUnit: String? = nil,
        size: Double? = nil,
        details: ProductDimensionDetails? = nil
    ) {
        self.sizeUnit = sizeUnit
        self.size = size
        self.details = details
    }

    private enum CodingKeys: String, CodingKey {
        case sizeUnit = "size_unit"
        case size
        case details
    }
}

/// Typed Inttegro domain value.
public struct ProductDimensionsDigital: Codable, Sendable, Equatable {
    public var bytes: Double?
    public var sizeUnit: String?
    public var size: Double?

    public init(
        bytes: Double? = nil,
        sizeUnit: String? = nil,
        size: Double? = nil
    ) {
        self.bytes = bytes
        self.sizeUnit = sizeUnit
        self.size = size
    }

    private enum CodingKeys: String, CodingKey {
        case bytes
        case sizeUnit = "size_unit"
        case size
    }
}

/// Typed Inttegro request parameters.
public struct ProductDimensionsInput: Codable, Sendable, Equatable {
    public var physical: ProductDimensionsInputPhysical?
    public var digital: ProductDimensionsInputDigital?
    public var custom: ProductDimensionsInputCustom?

    public init(
        physical: ProductDimensionsInputPhysical? = nil,
        digital: ProductDimensionsInputDigital? = nil,
        custom: ProductDimensionsInputCustom? = nil
    ) {
        self.physical = physical
        self.digital = digital
        self.custom = custom
    }
}

/// Typed Inttegro request parameters.
public struct ProductDimensionsInputCustom: Codable, Sendable, Equatable {
    public var sizeUnit: String?
    public var size: Double?
    public var details: ProductDimensionDetails?

    public init(
        sizeUnit: String? = nil,
        size: Double? = nil,
        details: ProductDimensionDetails? = nil
    ) {
        self.sizeUnit = sizeUnit
        self.size = size
        self.details = details
    }

    private enum CodingKeys: String, CodingKey {
        case sizeUnit = "size_unit"
        case size
        case details
    }
}

/// Typed Inttegro request parameters.
public struct ProductDimensionsInputDigital: Codable, Sendable, Equatable {
    public var bytes: Double?
    public var sizeUnit: String?
    public var size: Double?

    public init(
        bytes: Double? = nil,
        sizeUnit: String? = nil,
        size: Double? = nil
    ) {
        self.bytes = bytes
        self.sizeUnit = sizeUnit
        self.size = size
    }

    private enum CodingKeys: String, CodingKey {
        case bytes
        case sizeUnit = "size_unit"
        case size
    }
}

/// Typed Inttegro request parameters.
public struct ProductDimensionsInputPhysical: Codable, Sendable, Equatable {
    public var weightUnit: String?
    public var weight: Double?
    public var size: Double?
    public var volumeUnit: String?
    public var volume: Double?
    public var length: Double?
    public var height: Double?
    public var width: Double?

    public init(
        weightUnit: String? = nil,
        weight: Double? = nil,
        size: Double? = nil,
        volumeUnit: String? = nil,
        volume: Double? = nil,
        length: Double? = nil,
        height: Double? = nil,
        width: Double? = nil
    ) {
        self.weightUnit = weightUnit
        self.weight = weight
        self.size = size
        self.volumeUnit = volumeUnit
        self.volume = volume
        self.length = length
        self.height = height
        self.width = width
    }

    private enum CodingKeys: String, CodingKey {
        case weightUnit = "weight_unit"
        case weight
        case size
        case volumeUnit = "volume_unit"
        case volume
        case length
        case height
        case width
    }
}

/// Typed Inttegro domain value.
public struct ProductDimensionsPhysical: Codable, Sendable, Equatable {
    public var weightUnit: String?
    public var weight: Double?
    public var size: Double?
    public var volumeUnit: String?
    public var volume: Double?
    public var length: Double?
    public var height: Double?
    public var width: Double?

    public init(
        weightUnit: String? = nil,
        weight: Double? = nil,
        size: Double? = nil,
        volumeUnit: String? = nil,
        volume: Double? = nil,
        length: Double? = nil,
        height: Double? = nil,
        width: Double? = nil
    ) {
        self.weightUnit = weightUnit
        self.weight = weight
        self.size = size
        self.volumeUnit = volumeUnit
        self.volume = volume
        self.length = length
        self.height = height
        self.width = width
    }

    private enum CodingKeys: String, CodingKey {
        case weightUnit = "weight_unit"
        case weight
        case size
        case volumeUnit = "volume_unit"
        case volume
        case length
        case height
        case width
    }
}

/// Typed Inttegro request parameters.
public struct ProductLineItemInput: Codable, Sendable, Equatable {
    public var type: LineItemType
    public var product: ProductLineItemInputProduct

    public init(
        type: LineItemType,
        product: ProductLineItemInputProduct
    ) {
        self.type = type
        self.product = product
    }
}

/// Typed Inttegro domain value.
public struct ProductMedia: Codable, Sendable, Equatable {
    public var heroImage: String?
    public var thumbnail: String?
    public var webPageUrl: String?
    public var brandLogo: String?
    public var infographic: String?
    public var promoVideo: String?
    public var demoVideo: String?
    public var gallery: [String]?
    public var downloads: [String]?

    public init(
        heroImage: String? = nil,
        thumbnail: String? = nil,
        webPageUrl: String? = nil,
        brandLogo: String? = nil,
        infographic: String? = nil,
        promoVideo: String? = nil,
        demoVideo: String? = nil,
        gallery: [String]? = nil,
        downloads: [String]? = nil
    ) {
        self.heroImage = heroImage
        self.thumbnail = thumbnail
        self.webPageUrl = webPageUrl
        self.brandLogo = brandLogo
        self.infographic = infographic
        self.promoVideo = promoVideo
        self.demoVideo = demoVideo
        self.gallery = gallery
        self.downloads = downloads
    }

    private enum CodingKeys: String, CodingKey {
        case heroImage = "hero_image"
        case thumbnail
        case webPageUrl = "web_page_url"
        case brandLogo = "brand_logo"
        case infographic
        case promoVideo = "promo_video"
        case demoVideo = "demo_video"
        case gallery
        case downloads
    }
}

/// Typed Inttegro request parameters.
public struct ProductMediaInput: Codable, Sendable, Equatable {
    public var heroImage: String?
    public var thumbnail: String?
    public var webPageUrl: String?
    public var brandLogo: String?
    public var infographic: String?
    public var promoVideo: String?
    public var demoVideo: String?
    public var gallery: [String]?
    public var downloads: [String]?

    public init(
        heroImage: String? = nil,
        thumbnail: String? = nil,
        webPageUrl: String? = nil,
        brandLogo: String? = nil,
        infographic: String? = nil,
        promoVideo: String? = nil,
        demoVideo: String? = nil,
        gallery: [String]? = nil,
        downloads: [String]? = nil
    ) {
        self.heroImage = heroImage
        self.thumbnail = thumbnail
        self.webPageUrl = webPageUrl
        self.brandLogo = brandLogo
        self.infographic = infographic
        self.promoVideo = promoVideo
        self.demoVideo = demoVideo
        self.gallery = gallery
        self.downloads = downloads
    }

    private enum CodingKeys: String, CodingKey {
        case heroImage = "hero_image"
        case thumbnail
        case webPageUrl = "web_page_url"
        case brandLogo = "brand_logo"
        case infographic
        case promoVideo = "promo_video"
        case demoVideo = "demo_video"
        case gallery
        case downloads
    }
}

/// Typed Inttegro domain value.
public struct ProductPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var products: [Product]

    public init(
        number: Int,
        size: Int,
        products: [Product]
    ) {
        self.number = number
        self.size = size
        self.products = products
    }
}

/// Typed Inttegro domain value.
public struct ProductPriceSummary: Codable, Sendable, Equatable {
    public var id: String
    public var active: Bool
    public var label: String?
    public var nominal: Amount

    public init(
        id: String,
        active: Bool,
        label: String? = nil,
        nominal: Amount
    ) {
        self.id = id
        self.active = active
        self.label = label
        self.nominal = nominal
    }
}

/// Typed Inttegro domain value.
public struct ProductShipment: Codable, Sendable, Equatable {
    public var type: ProductShipmentType
    public var delivery: ProductDelivery?
    public var download: ProductDownload?
    public var render: ProductRender?
    public var service: ProductService?
    public var stream: ProductStream?

    public init(
        type: ProductShipmentType,
        delivery: ProductDelivery? = nil,
        download: ProductDownload? = nil,
        render: ProductRender? = nil,
        service: ProductService? = nil,
        stream: ProductStream? = nil
    ) {
        self.type = type
        self.delivery = delivery
        self.download = download
        self.render = render
        self.service = service
        self.stream = stream
    }
}

public struct ProductDelivery: Codable, Sendable, Equatable { public init() {} }
public struct ProductDownload: Codable, Sendable, Equatable { public init() {} }
public struct ProductRender: Codable, Sendable, Equatable { public init() {} }
public struct ProductService: Codable, Sendable, Equatable { public init() {} }
public struct ProductStream: Codable, Sendable, Equatable { public init() {} }

/// Typed Inttegro request parameters.
public struct ProductShipmentInput: Codable, Sendable, Equatable {
    public var type: ProductShipmentInputType

    public init(
        type: ProductShipmentInputType
    ) {
        self.type = type
    }
}

/// Typed Inttegro domain value.
public struct PublicFileStorage: Codable, Sendable, Equatable {
    public var encoding: FileStorageEncoding
    public var storedSize: Int

    public init(
        encoding: FileStorageEncoding,
        storedSize: Int
    ) {
        self.encoding = encoding
        self.storedSize = storedSize
    }

    private enum CodingKeys: String, CodingKey {
        case encoding
        case storedSize = "stored_size"
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntent: Codable, Sendable, Equatable {
    public var activity: PurchaseIntentActivityLog?
    public var allowVariants: Bool
    public var createdAt: Date
    public var expiresAt: Date?
    public var id: String
    public var inactiveAt: Date?
    public var merchant: PurchaseIntentMerchant?
    public var price: PurchaseIntentPrice?
    public var product: PurchaseIntentProduct?
    public var quantity: PurchaseIntentQuantity
    public var status: PurchaseIntentStatus
    public var updatedAt: Date?
    public var usage: PurchaseIntentUsage
    public var variantSet: PurchaseIntentVariantSet?

    public init(
        activity: PurchaseIntentActivityLog? = nil,
        allowVariants: Bool,
        createdAt: Date,
        expiresAt: Date? = nil,
        id: String,
        inactiveAt: Date? = nil,
        merchant: PurchaseIntentMerchant? = nil,
        price: PurchaseIntentPrice? = nil,
        product: PurchaseIntentProduct? = nil,
        quantity: PurchaseIntentQuantity,
        status: PurchaseIntentStatus,
        updatedAt: Date? = nil,
        usage: PurchaseIntentUsage,
        variantSet: PurchaseIntentVariantSet? = nil
    ) {
        self.activity = activity
        self.allowVariants = allowVariants
        self.createdAt = createdAt
        self.expiresAt = expiresAt
        self.id = id
        self.inactiveAt = inactiveAt
        self.merchant = merchant
        self.price = price
        self.product = product
        self.quantity = quantity
        self.status = status
        self.updatedAt = updatedAt
        self.usage = usage
        self.variantSet = variantSet
    }

    private enum CodingKeys: String, CodingKey {
        case activity
        case allowVariants = "allow_variants"
        case createdAt = "created_at"
        case expiresAt = "expires_at"
        case id
        case inactiveAt = "inactive_at"
        case merchant
        case price
        case product
        case quantity
        case status
        case updatedAt = "updated_at"
        case usage
        case variantSet = "variant_set"
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentActivityLog: Codable, Sendable, Equatable {
    public var recent: [PurchaseIntentActivity]?

    public init(
        recent: [PurchaseIntentActivity]? = nil
    ) {
        self.recent = recent
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentActivity: Codable, Sendable, Equatable {
    public var amount: Amount?
    public var attribution: PurchaseIntentActivityAttribution?
    public var createdAt: Date
    public var errorCode: String?
    public var id: String
    public var orderId: String?
    public var paymentId: String?
    public var productId: String?
    public var purchaseIntentId: String
    public var quantity: Int?
    public var source: String?
    public var type: PurchaseIntentActivityType
    public var variantProductId: String?
    public var visitor: PurchaseIntentActivityVisitor?

    public init(
        amount: Amount? = nil,
        attribution: PurchaseIntentActivityAttribution? = nil,
        createdAt: Date,
        errorCode: String? = nil,
        id: String,
        orderId: String? = nil,
        paymentId: String? = nil,
        productId: String? = nil,
        purchaseIntentId: String,
        quantity: Int? = nil,
        source: String? = nil,
        type: PurchaseIntentActivityType,
        variantProductId: String? = nil,
        visitor: PurchaseIntentActivityVisitor? = nil
    ) {
        self.amount = amount
        self.attribution = attribution
        self.createdAt = createdAt
        self.errorCode = errorCode
        self.id = id
        self.orderId = orderId
        self.paymentId = paymentId
        self.productId = productId
        self.purchaseIntentId = purchaseIntentId
        self.quantity = quantity
        self.source = source
        self.type = type
        self.variantProductId = variantProductId
        self.visitor = visitor
    }

    private enum CodingKeys: String, CodingKey {
        case amount
        case attribution
        case createdAt = "created_at"
        case errorCode = "error_code"
        case id
        case orderId = "order_id"
        case paymentId = "payment_id"
        case productId = "product_id"
        case purchaseIntentId = "purchase_intent_id"
        case quantity
        case source
        case type
        case variantProductId = "variant_product_id"
        case visitor
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentActivityAttribution: Codable, Sendable, Equatable {
    public var campaign: String?
    public var channel: String?
    public var content: String?
    public var landingUrl: String?
    public var medium: String?
    public var referrer: String?
    public var referrerHost: String?
    public var source: String?
    public var term: String?

    public init(
        campaign: String? = nil,
        channel: String? = nil,
        content: String? = nil,
        landingUrl: String? = nil,
        medium: String? = nil,
        referrer: String? = nil,
        referrerHost: String? = nil,
        source: String? = nil,
        term: String? = nil
    ) {
        self.campaign = campaign
        self.channel = channel
        self.content = content
        self.landingUrl = landingUrl
        self.medium = medium
        self.referrer = referrer
        self.referrerHost = referrerHost
        self.source = source
        self.term = term
    }

    private enum CodingKeys: String, CodingKey {
        case campaign
        case channel
        case content
        case landingUrl = "landing_url"
        case medium
        case referrer
        case referrerHost = "referrer_host"
        case source
        case term
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentActivityVisitor: Codable, Sendable, Equatable {
    public var browser: String?
    public var city: String?
    public var country: String?
    public var device: String?
    public var ipAddress: String?
    public var os: String?
    public var region: String?
    public var sessionId: String?
    public var timezone: String?
    public var userAgent: String?
    public var visitorId: String?

    public init(
        browser: String? = nil,
        city: String? = nil,
        country: String? = nil,
        device: String? = nil,
        ipAddress: String? = nil,
        os: String? = nil,
        region: String? = nil,
        sessionId: String? = nil,
        timezone: String? = nil,
        userAgent: String? = nil,
        visitorId: String? = nil
    ) {
        self.browser = browser
        self.city = city
        self.country = country
        self.device = device
        self.ipAddress = ipAddress
        self.os = os
        self.region = region
        self.sessionId = sessionId
        self.timezone = timezone
        self.userAgent = userAgent
        self.visitorId = visitorId
    }

    private enum CodingKeys: String, CodingKey {
        case browser
        case city
        case country
        case device
        case ipAddress = "ip_address"
        case os
        case region
        case sessionId = "session_id"
        case timezone
        case userAgent = "user_agent"
        case visitorId = "visitor_id"
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentMerchant: Codable, Sendable, Equatable {
    public var appName: String?
    public var organizationId: String?
    public var organizationName: String?

    public init(
        appName: String? = nil,
        organizationId: String? = nil,
        organizationName: String? = nil
    ) {
        self.appName = appName
        self.organizationId = organizationId
        self.organizationName = organizationName
    }

    private enum CodingKeys: String, CodingKey {
        case appName = "app_name"
        case organizationId = "organization_id"
        case organizationName = "organization_name"
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentOriginalPrice: Codable, Sendable, Equatable {
    public var active: Bool
    public var id: String?
    public var label: String?
    public var nominal: Amount

    public init(
        active: Bool,
        id: String? = nil,
        label: String? = nil,
        nominal: Amount
    ) {
        self.active = active
        self.id = id
        self.label = label
        self.nominal = nominal
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentPage: Codable, Sendable, Equatable {
    public var number: Int
    public var purchaseIntents: [PurchaseIntent]
    public var size: Int

    public init(
        number: Int,
        purchaseIntents: [PurchaseIntent],
        size: Int
    ) {
        self.number = number
        self.purchaseIntents = purchaseIntents
        self.size = size
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case purchaseIntents = "purchase_intents"
        case size
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentPrice: Codable, Sendable, Equatable {
    public var active: Bool
    public var id: String?
    public var label: String?
    public var nominal: Amount
    public var original: PurchaseIntentOriginalPrice?

    public init(
        active: Bool,
        id: String? = nil,
        label: String? = nil,
        nominal: Amount,
        original: PurchaseIntentOriginalPrice? = nil
    ) {
        self.active = active
        self.id = id
        self.label = label
        self.nominal = nominal
        self.original = original
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentProduct: Codable, Sendable, Equatable {
    public var id: String
    public var about: String?
    public var active: Bool
    public var archivedAt: Date?
    public var attributes: [PurchaseIntentProductAttributesItem]?
    public var category: String?
    public var createdAt: Date
    public var customData: CustomData?
    public var description: String?
    public var dimensions: ProductDimensions?
    public var media: ProductMedia?
    public var name: String
    public var publishedAt: Date?
    public var reference: String?
    public var shipment: ProductShipment?
    public var taxCode: String?
    public var type: ProductType
    public var unitDim: String?
    public var updatedAt: Date?
    public var prices: [ProductPriceSummary]?
    public var variantSetId: String?

    public init(
        id: String,
        about: String? = nil,
        active: Bool,
        archivedAt: Date? = nil,
        attributes: [PurchaseIntentProductAttributesItem]? = nil,
        category: String? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        description: String? = nil,
        dimensions: ProductDimensions? = nil,
        media: ProductMedia? = nil,
        name: String,
        publishedAt: Date? = nil,
        reference: String? = nil,
        shipment: ProductShipment? = nil,
        taxCode: String? = nil,
        type: ProductType,
        unitDim: String? = nil,
        updatedAt: Date? = nil,
        prices: [ProductPriceSummary]? = nil,
        variantSetId: String? = nil
    ) {
        self.id = id
        self.about = about
        self.active = active
        self.archivedAt = archivedAt
        self.attributes = attributes
        self.category = category
        self.createdAt = createdAt
        self.customData = customData
        self.description = description
        self.dimensions = dimensions
        self.media = media
        self.name = name
        self.publishedAt = publishedAt
        self.reference = reference
        self.shipment = shipment
        self.taxCode = taxCode
        self.type = type
        self.unitDim = unitDim
        self.updatedAt = updatedAt
        self.prices = prices
        self.variantSetId = variantSetId
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case about
        case active
        case archivedAt = "archived_at"
        case attributes
        case category
        case createdAt = "created_at"
        case customData = "custom_data"
        case description
        case dimensions
        case media
        case name
        case publishedAt = "published_at"
        case reference
        case shipment
        case taxCode = "tax_code"
        case type
        case unitDim = "unit_dim"
        case updatedAt = "updated_at"
        case prices
        case variantSetId = "variant_set_id"
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentProductAttributesItem: Codable, Sendable, Equatable {
    public var name: String
    public var value: String

    public init(
        name: String,
        value: String
    ) {
        self.name = name
        self.value = value
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentQuantity: Codable, Sendable, Equatable {
    public var min: Int
    public var max: Int?

    public init(
        min: Int,
        max: Int? = nil
    ) {
        self.min = min
        self.max = max
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentUsage: Codable, Sendable, Equatable {
    public var multiUse: Bool?
    public var order: PurchaseIntentUsageOrder?
    public var singleUse: Bool?

    public init(
        multiUse: Bool? = nil,
        order: PurchaseIntentUsageOrder? = nil,
        singleUse: Bool? = nil
    ) {
        self.multiUse = multiUse
        self.order = order
        self.singleUse = singleUse
    }

    private enum CodingKeys: String, CodingKey {
        case multiUse = "multi_use"
        case order
        case singleUse = "single_use"
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentUsageOrder: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var id: String

    public init(
        createdAt: Date,
        id: String
    ) {
        self.createdAt = createdAt
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentVariant: Codable, Sendable, Equatable {
    public var active: Bool
    public var position: Int?
    public var price: PurchaseIntentPrice?
    public var product: PurchaseIntentProduct?
    public var productId: String
    public var variantValues: VariantValues

    public init(
        active: Bool,
        position: Int? = nil,
        price: PurchaseIntentPrice? = nil,
        product: PurchaseIntentProduct? = nil,
        productId: String,
        variantValues: VariantValues
    ) {
        self.active = active
        self.position = position
        self.price = price
        self.product = product
        self.productId = productId
        self.variantValues = variantValues
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case position
        case price
        case product
        case productId = "product_id"
        case variantValues = "variant_values"
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentVariantAxis: Codable, Sendable, Equatable {
    public var key: String
    public var label: String
    public var position: Int

    public init(
        key: String,
        label: String,
        position: Int
    ) {
        self.key = key
        self.label = label
        self.position = position
    }
}

/// Typed Inttegro domain value.
public struct PurchaseIntentVariantSet: Codable, Sendable, Equatable {
    public var active: Bool
    public var defaultProductId: String?
    public var description: String?
    public var id: String
    public var name: String
    public var reference: String?
    public var variantAxes: [PurchaseIntentVariantAxis]
    public var variants: [PurchaseIntentVariant]

    public init(
        active: Bool,
        defaultProductId: String? = nil,
        description: String? = nil,
        id: String,
        name: String,
        reference: String? = nil,
        variantAxes: [PurchaseIntentVariantAxis],
        variants: [PurchaseIntentVariant]
    ) {
        self.active = active
        self.defaultProductId = defaultProductId
        self.description = description
        self.id = id
        self.name = name
        self.reference = reference
        self.variantAxes = variantAxes
        self.variants = variants
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case defaultProductId = "default_product_id"
        case description
        case id
        case name
        case reference
        case variantAxes = "variant_axes"
        case variants
    }
}

/// Typed Inttegro domain value.
public struct Refund: Codable, Sendable, Equatable {
    public var canceledAt: Date?
    public var createdAt: Date
    public var customData: CustomData?
    public var failedAt: Date?
    public var id: String
    public var lineItems: [RefundLineItem]
    public var orderId: String
    public var processingAt: Date?
    public var reason: RefundReason
    public var reasonDetails: String?
    public var reference: String?
    public var status: RefundStatus
    public var succeededAt: Date?
    public var total: Amount

    public init(
        canceledAt: Date? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        failedAt: Date? = nil,
        id: String,
        lineItems: [RefundLineItem],
        orderId: String,
        processingAt: Date? = nil,
        reason: RefundReason,
        reasonDetails: String? = nil,
        reference: String? = nil,
        status: RefundStatus,
        succeededAt: Date? = nil,
        total: Amount
    ) {
        self.canceledAt = canceledAt
        self.createdAt = createdAt
        self.customData = customData
        self.failedAt = failedAt
        self.id = id
        self.lineItems = lineItems
        self.orderId = orderId
        self.processingAt = processingAt
        self.reason = reason
        self.reasonDetails = reasonDetails
        self.reference = reference
        self.status = status
        self.succeededAt = succeededAt
        self.total = total
    }

    private enum CodingKeys: String, CodingKey {
        case canceledAt = "canceled_at"
        case createdAt = "created_at"
        case customData = "custom_data"
        case failedAt = "failed_at"
        case id
        case lineItems = "line_items"
        case orderId = "order_id"
        case processingAt = "processing_at"
        case reason
        case reasonDetails = "reason_details"
        case reference
        case status
        case succeededAt = "succeeded_at"
        case total
    }
}

/// Typed Inttegro domain value.
public struct RefundLineItem: Codable, Sendable, Equatable {
    public var id: String
    public var orderLineItemId: String
    public var originalAmountPaid: Amount
    public var reason: RefundReason?
    public var reasonDetails: String?
    public var refundAmount: Amount

    public init(
        id: String,
        orderLineItemId: String,
        originalAmountPaid: Amount,
        reason: RefundReason? = nil,
        reasonDetails: String? = nil,
        refundAmount: Amount
    ) {
        self.id = id
        self.orderLineItemId = orderLineItemId
        self.originalAmountPaid = originalAmountPaid
        self.reason = reason
        self.reasonDetails = reasonDetails
        self.refundAmount = refundAmount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case orderLineItemId = "order_line_item_id"
        case originalAmountPaid = "original_amount_paid"
        case reason
        case reasonDetails = "reason_details"
        case refundAmount = "refund_amount"
    }
}

/// Typed Inttegro domain value.
public struct RefundPage: Codable, Sendable, Equatable {
    public var number: Int
    public var refunds: [Refund]
    public var size: Int

    public init(
        number: Int,
        refunds: [Refund],
        size: Int
    ) {
        self.number = number
        self.refunds = refunds
        self.size = size
    }
}

/// Typed Inttegro request parameters.
public struct RefundRequestMetaInput: Codable, Sendable, Equatable {
    public var idempotencyKey: String?

    public init(
        idempotencyKey: String? = nil
    ) {
        self.idempotencyKey = idempotencyKey
    }

    private enum CodingKeys: String, CodingKey {
        case idempotencyKey = "idempotency_key"
    }
}

/// Typed Inttegro request parameters.
public struct RenderMessageTemplatePreviewRequest: Codable, Sendable, Equatable {
    public var messageTemplate: MessageTemplateReferenceInput

    public init(
        messageTemplate: MessageTemplateReferenceInput
    ) {
        self.messageTemplate = messageTemplate
    }

    private enum CodingKeys: String, CodingKey {
        case messageTemplate = "message_template"
    }
}

/// Typed Inttegro domain value.
public struct RenderedEmailMessageTemplate: Codable, Sendable, Equatable {
    public var subject: String
    public var text: String
    public var html: String?
    public var from: MessageTemplateMailbox?
    public var replyTo: MessageTemplateMailbox?
    public var headers: MessageHeaders?
    public var safety: MessageTemplateSafetyResult?

    public init(
        subject: String,
        text: String,
        html: String? = nil,
        from: MessageTemplateMailbox? = nil,
        replyTo: MessageTemplateMailbox? = nil,
        headers: MessageHeaders? = nil,
        safety: MessageTemplateSafetyResult? = nil
    ) {
        self.subject = subject
        self.text = text
        self.html = html
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
        self.safety = safety
    }

    private enum CodingKeys: String, CodingKey {
        case subject
        case text
        case html
        case from
        case replyTo = "reply_to"
        case headers
        case safety
    }
}

/// Typed Inttegro domain value.
public struct RenderedMessageTemplate: Codable, Sendable, Equatable {
    public var channel: MessageTemplateChannel
    public var attachments: [String]?
    public var sms: RenderedSMSMessageTemplate?
    public var email: RenderedEmailMessageTemplate?

    public init(
        channel: MessageTemplateChannel,
        attachments: [String]? = nil,
        sms: RenderedSMSMessageTemplate? = nil,
        email: RenderedEmailMessageTemplate? = nil
    ) {
        self.channel = channel
        self.attachments = attachments
        self.sms = sms
        self.email = email
    }
}

/// Typed Inttegro domain value.
public struct RenderedSMSMessageTemplate: Codable, Sendable, Equatable {
    public var fullMessage: String

    public init(
        fullMessage: String
    ) {
        self.fullMessage = fullMessage
    }

    private enum CodingKeys: String, CodingKey {
        case fullMessage = "full_message"
    }
}

/// Typed Inttegro request parameters.
public struct RequestConfirmationRequest: Codable, Sendable, Equatable {
    public var orderId: String

    public init(
        orderId: String
    ) {
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
    }
}

/// Typed Inttegro domain value.
public struct ResourceSupply: Codable, Sendable, Equatable {
    public var attemptId: String?
    public var by: String
    public var channel: String?
    public var resourceId: String?
    public var resourceType: String?
    public var suppliedAt: Date

    public init(
        attemptId: String? = nil,
        by: String,
        channel: String? = nil,
        resourceId: String? = nil,
        resourceType: String? = nil,
        suppliedAt: Date
    ) {
        self.attemptId = attemptId
        self.by = by
        self.channel = channel
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.suppliedAt = suppliedAt
    }

    private enum CodingKeys: String, CodingKey {
        case attemptId = "attempt_id"
        case by
        case channel
        case resourceId = "resource_id"
        case resourceType = "resource_type"
        case suppliedAt = "supplied_at"
    }
}

/// Typed Inttegro request parameters.
public struct ReviewUploadRequestAttemptByIDRequest: Codable, Sendable, Equatable {
    public var publicMessage: String?
    public var reasons: [UploadRequestReviewReasonInput]?
    public var attemptId: String
    public var decision: UploadReviewDecision
    public var id: String

    public init(
        publicMessage: String? = nil,
        reasons: [UploadRequestReviewReasonInput]? = nil,
        attemptId: String,
        decision: UploadReviewDecision,
        id: String
    ) {
        self.publicMessage = publicMessage
        self.reasons = reasons
        self.attemptId = attemptId
        self.decision = decision
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case publicMessage = "public_message"
        case reasons
        case attemptId = "attempt_id"
        case decision
        case id
    }
}

/// Typed Inttegro request parameters.
public struct ReviewUploadRequestAttemptByOrdinalRequest: Codable, Sendable, Equatable {
    public var publicMessage: String?
    public var reasons: [UploadRequestReviewReasonInput]?
    public var attemptOrdinal: Int
    public var decision: UploadReviewDecision
    public var id: String

    public init(
        publicMessage: String? = nil,
        reasons: [UploadRequestReviewReasonInput]? = nil,
        attemptOrdinal: Int,
        decision: UploadReviewDecision,
        id: String
    ) {
        self.publicMessage = publicMessage
        self.reasons = reasons
        self.attemptOrdinal = attemptOrdinal
        self.decision = decision
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case publicMessage = "public_message"
        case reasons
        case attemptOrdinal = "attempt_ordinal"
        case decision
        case id
    }
}

/// Typed Inttegro request parameters.
public struct RevokeFileLinkRequest: Codable, Sendable, Equatable {
    public var revokedBy: FileActorInput?
    public var id: String

    public init(
        revokedBy: FileActorInput? = nil,
        id: String
    ) {
        self.revokedBy = revokedBy
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case revokedBy = "revoked_by"
        case id
    }
}

/// Typed Inttegro domain value.
public struct ScheduleCancelDetail: Codable, Sendable, Equatable {
    public var chimeIds: [String]?
    public var content: String
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var errors: [ScheduleError]?
    public var executedAt: Date?
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]
    public var sendAfter: Date
    public var senderId: String
    public var canceledAt: Date?

    public init(
        chimeIds: [String]? = nil,
        content: String,
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        errors: [ScheduleError]? = nil,
        executedAt: Date? = nil,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String],
        sendAfter: Date,
        senderId: String,
        canceledAt: Date? = nil
    ) {
        self.chimeIds = chimeIds
        self.content = content
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.errors = errors
        self.executedAt = executedAt
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
        self.canceledAt = canceledAt
    }

    private enum CodingKeys: String, CodingKey {
        case chimeIds = "chime_ids"
        case content
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case errors
        case executedAt = "executed_at"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
        case canceledAt = "canceled_at"
    }
}

/// Typed Inttegro request parameters.
public struct ScheduleChimeRequest: Codable, Sendable, Equatable {
    public var requestMeta: ScheduleChimeRequestRequestMeta?
    public var fullMessage: String?
    public var email: ChimeEmailMessageInput?
    public var messageTemplate: MessageTemplateReferenceInput?
    public var senderId: String?
    public var purpose: String?
    public var recipients: [JSONValue]
    public var sendAfter: Date

    public init(
        requestMeta: ScheduleChimeRequestRequestMeta? = nil,
        fullMessage: String? = nil,
        email: ChimeEmailMessageInput? = nil,
        messageTemplate: MessageTemplateReferenceInput? = nil,
        senderId: String? = nil,
        purpose: String? = nil,
        recipients: [JSONValue],
        sendAfter: Date
    ) {
        self.requestMeta = requestMeta
        self.fullMessage = fullMessage
        self.email = email
        self.messageTemplate = messageTemplate
        self.senderId = senderId
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
    }

    private enum CodingKeys: String, CodingKey {
        case requestMeta = "request_meta"
        case fullMessage = "full_message"
        case email
        case messageTemplate = "message_template"
        case senderId = "sender_id"
        case purpose
        case recipients
        case sendAfter = "send_after"
    }
}

/// Typed Inttegro request parameters.
public struct ScheduleChimeRequestRequestMeta: Codable, Sendable, Equatable {
    public var idempotencyKey: String?

    public init(
        idempotencyKey: String? = nil
    ) {
        self.idempotencyKey = idempotencyKey
    }

    private enum CodingKeys: String, CodingKey {
        case idempotencyKey = "idempotency_key"
    }
}

/// Typed Inttegro domain value.
public struct ScheduleCreationDetail: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var executedAt: Date?
    public var fullMessage: String
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]?
    public var sendAfter: Date
    public var senderId: String

    public init(
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        executedAt: Date? = nil,
        fullMessage: String,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String]? = nil,
        sendAfter: Date,
        senderId: String
    ) {
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.executedAt = executedAt
        self.fullMessage = fullMessage
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case executedAt = "executed_at"
        case fullMessage = "full_message"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
    }
}

/// Typed Inttegro domain value.
public struct ScheduleDetail: Codable, Sendable, Equatable {
    public var chimeIds: [String]?
    public var content: String
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var errors: [ScheduleError]?
    public var executedAt: Date?
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]
    public var sendAfter: Date
    public var senderId: String

    public init(
        chimeIds: [String]? = nil,
        content: String,
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        errors: [ScheduleError]? = nil,
        executedAt: Date? = nil,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String],
        sendAfter: Date,
        senderId: String
    ) {
        self.chimeIds = chimeIds
        self.content = content
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.errors = errors
        self.executedAt = executedAt
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case chimeIds = "chime_ids"
        case content
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case errors
        case executedAt = "executed_at"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
    }
}

/// Typed Inttegro domain value.
public struct ScheduleError: Codable, Sendable, Equatable {
    public var recipient: String?
    public var fixCode: String?
    public var type: String?

    public init(
        recipient: String? = nil,
        fixCode: String? = nil,
        type: String? = nil
    ) {
        self.recipient = recipient
        self.fixCode = fixCode
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case recipient
        case fixCode = "fix_code"
        case type
    }
}

/// Typed Inttegro request parameters.
public struct SchedulePayoutRequest: Codable, Sendable, Equatable {
    public var executeAfter: Date?
    public var maxAmount: Int?
    public var destinationId: String
    public var reference: String

    public init(
        executeAfter: Date? = nil,
        maxAmount: Int? = nil,
        destinationId: String,
        reference: String
    ) {
        self.executeAfter = executeAfter
        self.maxAmount = maxAmount
        self.destinationId = destinationId
        self.reference = reference
    }

    private enum CodingKeys: String, CodingKey {
        case executeAfter = "execute_after"
        case maxAmount = "max_amount"
        case destinationId = "destination_id"
        case reference
    }
}

/// Typed Inttegro domain value.
public struct SecretKey: Codable, Sendable, Equatable {
    public var id: String
    public var label: String?
    public var tokenType: SecretKeyTokenType
    public var issuedAt: Date
    public var updatedAt: Date?
    public var expiresAt: Date?
    public var status: SecretKeyStatus
    public var active: Bool
    public var revokedAt: Date?
    public var lastUsedAt: Date?
    public var usageCount: Int?

    public init(
        id: String,
        label: String? = nil,
        tokenType: SecretKeyTokenType,
        issuedAt: Date,
        updatedAt: Date? = nil,
        expiresAt: Date? = nil,
        status: SecretKeyStatus,
        active: Bool,
        revokedAt: Date? = nil,
        lastUsedAt: Date? = nil,
        usageCount: Int? = nil
    ) {
        self.id = id
        self.label = label
        self.tokenType = tokenType
        self.issuedAt = issuedAt
        self.updatedAt = updatedAt
        self.expiresAt = expiresAt
        self.status = status
        self.active = active
        self.revokedAt = revokedAt
        self.lastUsedAt = lastUsedAt
        self.usageCount = usageCount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case tokenType = "token_type"
        case issuedAt = "issued_at"
        case updatedAt = "updated_at"
        case expiresAt = "expires_at"
        case status
        case active
        case revokedAt = "revoked_at"
        case lastUsedAt = "last_used_at"
        case usageCount = "usage_count"
    }
}

/// Typed Inttegro domain value.
public struct SecretKeyPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var count: Int
    public var total: Int
    public var hasMore: Bool
    public var keys: [SecretKey]

    public init(
        number: Int,
        size: Int,
        count: Int,
        total: Int,
        hasMore: Bool,
        keys: [SecretKey]
    ) {
        self.number = number
        self.size = size
        self.count = count
        self.total = total
        self.hasMore = hasMore
        self.keys = keys
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case count
        case total
        case hasMore = "has_more"
        case keys
    }
}

/// Typed Inttegro domain value.
public struct SecretKeyUsage: Codable, Sendable, Equatable {
    public var key: SecretKey
    public var usage: SecretKeyUsagePage

    public init(
        key: SecretKey,
        usage: SecretKeyUsagePage
    ) {
        self.key = key
        self.usage = usage
    }
}

/// Typed Inttegro domain value.
public struct SecretKeyUsagePage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var count: Int
    public var total: Int
    public var hasMore: Bool
    public var rows: [SecretKeyUsageRow]

    public init(
        number: Int,
        size: Int,
        count: Int,
        total: Int,
        hasMore: Bool,
        rows: [SecretKeyUsageRow]
    ) {
        self.number = number
        self.size = size
        self.count = count
        self.total = total
        self.hasMore = hasMore
        self.rows = rows
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case count
        case total
        case hasMore = "has_more"
        case rows
    }
}

/// Typed Inttegro request parameters.
public struct SecretKeyUsageRequest: Codable, Sendable, Equatable {
    public var number: Int?
    public var page: Int?
    public var size: Int?
    public var secretKeyId: String

    public init(
        number: Int? = nil,
        page: Int? = nil,
        size: Int? = nil,
        secretKeyId: String
    ) {
        self.number = number
        self.page = page
        self.size = size
        self.secretKeyId = secretKeyId
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case page
        case size
        case secretKeyId = "secret_key_id"
    }
}

/// Typed Inttegro domain value.
public struct SecretKeyUsageRow: Codable, Sendable, Equatable {
    public var secretKeyId: String
    public var occurredAt: Date
    public var authResult: SecretKeyAuthResult

    public init(
        secretKeyId: String,
        occurredAt: Date,
        authResult: SecretKeyAuthResult
    ) {
        self.secretKeyId = secretKeyId
        self.occurredAt = occurredAt
        self.authResult = authResult
    }

    private enum CodingKeys: String, CodingKey {
        case secretKeyId = "secret_key_id"
        case occurredAt = "occurred_at"
        case authResult = "auth_result"
    }
}

/// Typed Inttegro request parameters.
public struct SendChimeRequest: Codable, Sendable, Equatable {
    public var fullMessage: String?
    public var email: ChimeEmailMessageInput?
    public var messageTemplate: MessageTemplateReferenceInput?
    public var senderId: String?
    public var purpose: String?
    public var customData: CustomData?
    public var requestMeta: SendChimeRequestRequestMeta?
    public var recipient: SendChimeRequestRecipient

    public init(
        fullMessage: String? = nil,
        email: ChimeEmailMessageInput? = nil,
        messageTemplate: MessageTemplateReferenceInput? = nil,
        senderId: String? = nil,
        purpose: String? = nil,
        customData: CustomData? = nil,
        requestMeta: SendChimeRequestRequestMeta? = nil,
        recipient: SendChimeRequestRecipient
    ) {
        self.fullMessage = fullMessage
        self.email = email
        self.messageTemplate = messageTemplate
        self.senderId = senderId
        self.purpose = purpose
        self.customData = customData
        self.requestMeta = requestMeta
        self.recipient = recipient
    }

    private enum CodingKeys: String, CodingKey {
        case fullMessage = "full_message"
        case email
        case messageTemplate = "message_template"
        case senderId = "sender_id"
        case purpose
        case customData = "custom_data"
        case requestMeta = "request_meta"
        case recipient
    }
}

/// Typed Inttegro request parameters.
public struct SendChimeRequestRequestMeta: Codable, Sendable, Equatable {
    public var idempotencyKey: String?

    public init(
        idempotencyKey: String? = nil
    ) {
        self.idempotencyKey = idempotencyKey
    }

    private enum CodingKeys: String, CodingKey {
        case idempotencyKey = "idempotency_key"
    }
}

/// Typed Inttegro request parameters.
public struct SetPayoutDestinationsRequest: Codable, Sendable, Equatable {
    public var destinations: PayoutDestinations

    public init(
        destinations: PayoutDestinations
    ) {
        self.destinations = destinations
    }
}

/// Typed Inttegro request parameters.
public struct ShippingDetailsInput: Codable, Sendable, Equatable {
    public var id: String?
    public var taxCode: String?
    public var customData: CustomDataInput?
    public var fee: AmountParams

    public init(
        id: String? = nil,
        taxCode: String? = nil,
        customData: CustomDataInput? = nil,
        fee: AmountParams
    ) {
        self.id = id
        self.taxCode = taxCode
        self.customData = customData
        self.fee = fee
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case taxCode = "tax_code"
        case customData = "custom_data"
        case fee
    }
}

/// Typed Inttegro request parameters.
public struct ShippingInput: Codable, Sendable, Equatable {
    public var address: AddressInput

    public init(
        address: AddressInput
    ) {
        self.address = address
    }
}

/// Typed Inttegro request parameters.
public struct ShippingLineItemInput: Codable, Sendable, Equatable {
    public var type: LineItemType
    public var shipping: ShippingDetailsInput

    public init(
        type: LineItemType,
        shipping: ShippingDetailsInput
    ) {
        self.type = type
        self.shipping = shipping
    }
}

/// Typed Inttegro request parameters.
public struct TokenizeMobileMoneyPaymentMethodRequest: Codable, Sendable, Equatable {
    public var customData: CustomData?
    public var customerId: String
    public var type: PaymentMethodType
    public var mobileMoney: TokenizeMobileMoneyPaymentMethodRequestMobileMoney
    public var owner: PaymentMethodOwnerInput

    public init(
        customData: CustomData? = nil,
        customerId: String,
        type: PaymentMethodType,
        mobileMoney: TokenizeMobileMoneyPaymentMethodRequestMobileMoney,
        owner: PaymentMethodOwnerInput
    ) {
        self.customData = customData
        self.customerId = customerId
        self.type = type
        self.mobileMoney = mobileMoney
        self.owner = owner
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case customerId = "customer_id"
        case type
        case mobileMoney = "mobile_money"
        case owner
    }
}

/// Typed Inttegro request parameters.
public struct TokenizeMobileMoneyPaymentMethodRequestMobileMoney: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var network: MobileMoneyNetwork

    public init(
        accountNumber: String,
        network: MobileMoneyNetwork
    ) {
        self.accountNumber = accountNumber
        self.network = network
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case network
    }
}

/// Typed Inttegro request parameters.
public struct UnarchivePaymentMethodRequest: Codable, Sendable, Equatable {
    public var paymentMethodId: String

    public init(
        paymentMethodId: String
    ) {
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
    }
}

/// Typed Inttegro request parameters.
public struct UpdateApplicationRequest: Codable, Sendable, Equatable {
    public var name: String?
    public var alias: String?
    public var description: String?
    public var legalEntityType: String?

    public init(
        name: String? = nil,
        alias: String? = nil,
        description: String? = nil,
        legalEntityType: String? = nil
    ) {
        self.name = name
        self.alias = alias
        self.description = description
        self.legalEntityType = legalEntityType
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case alias
        case description
        case legalEntityType = "legal_entity_type"
    }
}

/// Typed Inttegro request parameters.
public struct UpdateCustomerRequest: Codable, Sendable, Equatable {
    public var billingAddress: CustomerAddressInput?
    public var customData: CustomDataInput?
    public var emailAddress: String?
    public var name: String?
    public var phoneNumber: String?
    public var reference: String?
    public var shippingAddress: CustomerAddressInput?
    public var suffix: String?
    public var title: String?
    public var customerId: String

    public init(
        billingAddress: CustomerAddressInput? = nil,
        customData: CustomDataInput? = nil,
        emailAddress: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        reference: String? = nil,
        shippingAddress: CustomerAddressInput? = nil,
        suffix: String? = nil,
        title: String? = nil,
        customerId: String
    ) {
        self.billingAddress = billingAddress
        self.customData = customData
        self.emailAddress = emailAddress
        self.name = name
        self.phoneNumber = phoneNumber
        self.reference = reference
        self.shippingAddress = shippingAddress
        self.suffix = suffix
        self.title = title
        self.customerId = customerId
    }

    private enum CodingKeys: String, CodingKey {
        case billingAddress = "billing_address"
        case customData = "custom_data"
        case emailAddress = "email_address"
        case name
        case phoneNumber = "phone_number"
        case reference
        case shippingAddress = "shipping_address"
        case suffix
        case title
        case customerId = "customer_id"
    }
}

/// Typed Inttegro request parameters.
public struct UpdateMessageTemplateRequest: Codable, Sendable, Equatable {
    public var name: String?
    public var about: String?
    public var channel: MessageTemplateChannel?
    public var purpose: String?
    public var locale: String?
    public var variables: [MessageTemplateVariableInput]?
    public var sms: MessageTemplateSMSContentInput?
    public var email: MessageTemplateEmailContentInput?
    public var attachments: [String]?
    public var id: String

    public init(
        name: String? = nil,
        about: String? = nil,
        channel: MessageTemplateChannel? = nil,
        purpose: String? = nil,
        locale: String? = nil,
        variables: [MessageTemplateVariableInput]? = nil,
        sms: MessageTemplateSMSContentInput? = nil,
        email: MessageTemplateEmailContentInput? = nil,
        attachments: [String]? = nil,
        id: String
    ) {
        self.name = name
        self.about = about
        self.channel = channel
        self.purpose = purpose
        self.locale = locale
        self.variables = variables
        self.sms = sms
        self.email = email
        self.attachments = attachments
        self.id = id
    }
}

/// Typed Inttegro request parameters.
public struct UpdateOrderRequest: Codable, Sendable, Equatable {
    public var clearPaymentMethod: Bool?
    public var customData: CustomData?
    public var invoiceSettings: InvoiceSettingsInput?
    public var finalize: Bool?
    public var lineItems: [LineItemInput]?
    public var number: String?
    public var receiptNumber: String?
    public var paymentMethodData: UpdateOrderRequestPaymentMethodData?
    public var paymentMethodId: String?
    public var statementDescriptor: String?
    public var statementDescriptorPrefix: String?
    public var orderId: String

    public init(
        clearPaymentMethod: Bool? = nil,
        customData: CustomData? = nil,
        invoiceSettings: InvoiceSettingsInput? = nil,
        finalize: Bool? = nil,
        lineItems: [LineItemInput]? = nil,
        number: String? = nil,
        receiptNumber: String? = nil,
        paymentMethodData: UpdateOrderRequestPaymentMethodData? = nil,
        paymentMethodId: String? = nil,
        statementDescriptor: String? = nil,
        statementDescriptorPrefix: String? = nil,
        orderId: String
    ) {
        self.clearPaymentMethod = clearPaymentMethod
        self.customData = customData
        self.invoiceSettings = invoiceSettings
        self.finalize = finalize
        self.lineItems = lineItems
        self.number = number
        self.receiptNumber = receiptNumber
        self.paymentMethodData = paymentMethodData
        self.paymentMethodId = paymentMethodId
        self.statementDescriptor = statementDescriptor
        self.statementDescriptorPrefix = statementDescriptorPrefix
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case clearPaymentMethod = "clear_payment_method"
        case customData = "custom_data"
        case invoiceSettings = "invoice_settings"
        case finalize
        case lineItems = "line_items"
        case number
        case receiptNumber = "receipt_number"
        case paymentMethodData = "payment_method_data"
        case paymentMethodId = "payment_method_id"
        case statementDescriptor = "statement_descriptor"
        case statementDescriptorPrefix = "statement_descriptor_prefix"
        case orderId = "order_id"
    }
}

/// Typed Inttegro request parameters.
public struct UpdateOrderRequestPaymentMethodData: Codable, Sendable, Equatable {
    public var mobileMoney: UpdateOrderRequestPaymentMethodDataMobileMoney?
    public var type: PaymentMethodType

    public init(
        mobileMoney: UpdateOrderRequestPaymentMethodDataMobileMoney? = nil,
        type: PaymentMethodType
    ) {
        self.mobileMoney = mobileMoney
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case mobileMoney = "mobile_money"
        case type
    }
}

/// Typed Inttegro request parameters.
public struct UpdateOrderRequestPaymentMethodDataMobileMoney: Codable, Sendable, Equatable {
    public var network: MobileMoneyNetwork
    public var accountNumber: String

    public init(
        network: MobileMoneyNetwork,
        accountNumber: String
    ) {
        self.network = network
        self.accountNumber = accountNumber
    }

    private enum CodingKeys: String, CodingKey {
        case network
        case accountNumber = "account_number"
    }
}

/// Typed Inttegro request parameters.
public struct UpdatePaymentMethodRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataPatch?
    public var active: Bool?
    public var archived: Bool?
    public var owner: UpdatePaymentMethodRequestOwner?
    public var paymentMethodId: String

    public init(
        customData: CustomDataPatch? = nil,
        active: Bool? = nil,
        archived: Bool? = nil,
        owner: UpdatePaymentMethodRequestOwner? = nil,
        paymentMethodId: String
    ) {
        self.customData = customData
        self.active = active
        self.archived = archived
        self.owner = owner
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case active
        case archived
        case owner
        case paymentMethodId = "payment_method_id"
    }
}

/// Typed Inttegro request parameters.
public struct UpdatePaymentMethodRequestOwner: Codable, Sendable, Equatable {
    public var name: String?
    public var address: UpdatePaymentMethodRequestOwnerAddress?

    public init(
        name: String? = nil,
        address: UpdatePaymentMethodRequestOwnerAddress? = nil
    ) {
        self.name = name
        self.address = address
    }
}

/// Typed Inttegro request parameters.
public struct UpdatePaymentMethodRequestOwnerAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var country: String?
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phoneNumber: String?
    public var postCode: String?
    public var region: String?

    public init(
        city: String? = nil,
        country: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        postCode: String? = nil,
        region: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phoneNumber = phoneNumber
        self.postCode = postCode
        self.region = region
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case country
        case line1
        case line2
        case name
        case phoneNumber = "phone_number"
        case postCode = "post_code"
        case region
    }
}

/// Typed Inttegro request parameters.
public struct UpdatePriceRequest: Codable, Sendable, Equatable {
    public var label: String?
    public var about: String?
    public var priceId: String

    public init(
        label: String? = nil,
        about: String? = nil,
        priceId: String
    ) {
        self.label = label
        self.about = about
        self.priceId = priceId
    }

    private enum CodingKeys: String, CodingKey {
        case label
        case about
        case priceId = "price_id"
    }
}

/// Typed Inttegro request parameters.
public struct UpdateProductRequest: Codable, Sendable, Equatable {
    public var type: ProductType?
    public var name: String?
    public var description: String?
    public var about: String?
    public var taxCode: String?
    public var category: String?
    public var shipment: ProductShipmentInput?
    public var dimensions: ProductDimensionsInput?
    public var unitDimension: String?
    public var media: ProductMediaInput?
    public var images: [String]?
    public var attributes: [ProductAttributeInput]?
    public var customData: CustomData?
    public var productId: String

    public init(
        type: ProductType? = nil,
        name: String? = nil,
        description: String? = nil,
        about: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        shipment: ProductShipmentInput? = nil,
        dimensions: ProductDimensionsInput? = nil,
        unitDimension: String? = nil,
        media: ProductMediaInput? = nil,
        images: [String]? = nil,
        attributes: [ProductAttributeInput]? = nil,
        customData: CustomData? = nil,
        productId: String
    ) {
        self.type = type
        self.name = name
        self.description = description
        self.about = about
        self.taxCode = taxCode
        self.category = category
        self.shipment = shipment
        self.dimensions = dimensions
        self.unitDimension = unitDimension
        self.media = media
        self.images = images
        self.attributes = attributes
        self.customData = customData
        self.productId = productId
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case name
        case description
        case about
        case taxCode = "tax_code"
        case category
        case shipment
        case dimensions
        case unitDimension = "unit_dimension"
        case media
        case images
        case attributes
        case customData = "custom_data"
        case productId = "product_id"
    }
}

/// Typed Inttegro request parameters.
public struct UpdatePurchaseIntentRequest: Codable, Sendable, Equatable {
    public var expiresAt: Date?
    public var id: String?
    public var quantity: UpdatePurchaseIntentRequestQuantity?
    public var purchaseIntentId: String?
    public var reactivate: Bool?

    public init(
        expiresAt: Date? = nil,
        id: String? = nil,
        quantity: UpdatePurchaseIntentRequestQuantity? = nil,
        purchaseIntentId: String? = nil,
        reactivate: Bool? = nil
    ) {
        self.expiresAt = expiresAt
        self.id = id
        self.quantity = quantity
        self.purchaseIntentId = purchaseIntentId
        self.reactivate = reactivate
    }

    private enum CodingKeys: String, CodingKey {
        case expiresAt = "expires_at"
        case id
        case quantity
        case purchaseIntentId = "purchase_intent_id"
        case reactivate
    }
}

/// Typed Inttegro request parameters.
public struct UpdatePurchaseIntentRequestQuantity: Codable, Sendable, Equatable {
    public var max: Int?
    public var min: Int

    public init(
        max: Int? = nil,
        min: Int
    ) {
        self.max = max
        self.min = min
    }
}

/// Typed Inttegro request parameters.
public struct UpdateSecretKeyRequest: Codable, Sendable, Equatable {
    public var label: String
    public var secretKeyId: String

    public init(
        label: String,
        secretKeyId: String
    ) {
        self.label = label
        self.secretKeyId = secretKeyId
    }

    private enum CodingKeys: String, CodingKey {
        case label
        case secretKeyId = "secret_key_id"
    }
}

/// Typed Inttegro domain value.
public struct UpdatedProduct: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var description: String?
    public var about: String?
    public var type: ProductType
    public var reference: String?
    public var taxCode: String?
    public var category: String?
    public var customData: CustomData?
    public var dimensions: ProductDimensions?
    public var prices: [ProductPriceSummary]?
    public var unitDim: String?
    public var createdAt: Date
    public var updatedAt: Date?

    public init(
        id: String,
        name: String,
        description: String? = nil,
        about: String? = nil,
        type: ProductType,
        reference: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        customData: CustomData? = nil,
        dimensions: ProductDimensions? = nil,
        prices: [ProductPriceSummary]? = nil,
        unitDim: String? = nil,
        createdAt: Date,
        updatedAt: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.about = about
        self.type = type
        self.reference = reference
        self.taxCode = taxCode
        self.category = category
        self.customData = customData
        self.dimensions = dimensions
        self.prices = prices
        self.unitDim = unitDim
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case about
        case type
        case reference
        case taxCode = "tax_code"
        case category
        case customData = "custom_data"
        case dimensions
        case prices
        case unitDim = "unit_dim"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}

/// Typed Inttegro domain value.
public struct UploadFulfillment: Codable, Sendable, Equatable {
    public var uploadRequest: UploadRequest
    public var file: FileUploadReceipt

    public init(
        uploadRequest: UploadRequest,
        file: FileUploadReceipt
    ) {
        self.uploadRequest = uploadRequest
        self.file = file
    }

    private enum CodingKeys: String, CodingKey {
        case uploadRequest = "upload_request"
        case file
    }
}

/// Typed Inttegro domain value.
public struct UploadRequest: Codable, Sendable, Equatable {
    public var id: String
    public var purpose: String
    public var status: UploadRequestStatus
    public var active: Bool
    public var fileId: String?
    public var uploadUrl: String?
    public var constraints: UploadRequestConstraints
    public var display: UploadRequestDisplay
    public var subject: FileParty
    public var recipient: FileParty
    public var resource: FileResource
    public var requester: UploadRequestActor
    public var attempts: UploadRequestAttempts
    public var latestError: UploadRequestLatestError?
    public var canceledBy: UploadRequestActor?
    public var customData: CustomData?
    public var metadata: FileMetadata?
    public var createdAt: Date
    public var updatedAt: Date
    public var expiresAt: Date
    public var uploadingAt: Date?
    public var fulfilledAt: Date?
    public var expiredAt: Date?
    public var canceledAt: Date?
    public var attempt: UploadRequestAttempt?

    public init(
        id: String,
        purpose: String,
        status: UploadRequestStatus,
        active: Bool,
        fileId: String? = nil,
        uploadUrl: String? = nil,
        constraints: UploadRequestConstraints,
        display: UploadRequestDisplay,
        subject: FileParty,
        recipient: FileParty,
        resource: FileResource,
        requester: UploadRequestActor,
        attempts: UploadRequestAttempts,
        latestError: UploadRequestLatestError? = nil,
        canceledBy: UploadRequestActor? = nil,
        customData: CustomData? = nil,
        metadata: FileMetadata? = nil,
        createdAt: Date,
        updatedAt: Date,
        expiresAt: Date,
        uploadingAt: Date? = nil,
        fulfilledAt: Date? = nil,
        expiredAt: Date? = nil,
        canceledAt: Date? = nil,
        attempt: UploadRequestAttempt? = nil
    ) {
        self.id = id
        self.purpose = purpose
        self.status = status
        self.active = active
        self.fileId = fileId
        self.uploadUrl = uploadUrl
        self.constraints = constraints
        self.display = display
        self.subject = subject
        self.recipient = recipient
        self.resource = resource
        self.requester = requester
        self.attempts = attempts
        self.latestError = latestError
        self.canceledBy = canceledBy
        self.customData = customData
        self.metadata = metadata
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.expiresAt = expiresAt
        self.uploadingAt = uploadingAt
        self.fulfilledAt = fulfilledAt
        self.expiredAt = expiredAt
        self.canceledAt = canceledAt
        self.attempt = attempt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case purpose
        case status
        case active
        case fileId = "file_id"
        case uploadUrl = "upload_url"
        case constraints
        case display
        case subject
        case recipient
        case resource
        case requester
        case attempts
        case latestError = "latest_error"
        case canceledBy = "canceled_by"
        case customData = "custom_data"
        case metadata
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case expiresAt = "expires_at"
        case uploadingAt = "uploading_at"
        case fulfilledAt = "fulfilled_at"
        case expiredAt = "expired_at"
        case canceledAt = "canceled_at"
        case attempt
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestActor: Codable, Sendable, Equatable {
    public var email: String?
    public var id: String?
    public var name: String?
    public var type: String

    public init(
        email: String? = nil,
        id: String? = nil,
        name: String? = nil,
        type: String
    ) {
        self.email = email
        self.id = id
        self.name = name
        self.type = type
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestAttempt: Codable, Sendable, Equatable {
    public var attemptedAt: Date
    public var contentType: String?
    public var declaredSize: Int?
    public var error: UploadRequestLatestError?
    public var failedAt: Date?
    public var fileId: String?
    public var filename: String?
    public var id: String
    public var ordinal: Int
    public var review: UploadRequestReview?
    public var status: String
    public var succeededAt: Date?
    public var uploadRequestId: String

    public init(
        attemptedAt: Date,
        contentType: String? = nil,
        declaredSize: Int? = nil,
        error: UploadRequestLatestError? = nil,
        failedAt: Date? = nil,
        fileId: String? = nil,
        filename: String? = nil,
        id: String,
        ordinal: Int,
        review: UploadRequestReview? = nil,
        status: String,
        succeededAt: Date? = nil,
        uploadRequestId: String
    ) {
        self.attemptedAt = attemptedAt
        self.contentType = contentType
        self.declaredSize = declaredSize
        self.error = error
        self.failedAt = failedAt
        self.fileId = fileId
        self.filename = filename
        self.id = id
        self.ordinal = ordinal
        self.review = review
        self.status = status
        self.succeededAt = succeededAt
        self.uploadRequestId = uploadRequestId
    }

    private enum CodingKeys: String, CodingKey {
        case attemptedAt = "attempted_at"
        case contentType = "content_type"
        case declaredSize = "declared_size"
        case error
        case failedAt = "failed_at"
        case fileId = "file_id"
        case filename
        case id
        case ordinal
        case review
        case status
        case succeededAt = "succeeded_at"
        case uploadRequestId = "upload_request_id"
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestAttempts: Codable, Sendable, Equatable {
    public var maxAttempts: Int?
    public var attemptCount: Int
    public var failedAttemptCount: Int
    public var lastAttemptedAt: Date?

    public init(
        maxAttempts: Int? = nil,
        attemptCount: Int,
        failedAttemptCount: Int,
        lastAttemptedAt: Date? = nil
    ) {
        self.maxAttempts = maxAttempts
        self.attemptCount = attemptCount
        self.failedAttemptCount = failedAttemptCount
        self.lastAttemptedAt = lastAttemptedAt
    }

    private enum CodingKeys: String, CodingKey {
        case maxAttempts = "max_attempts"
        case attemptCount = "attempt_count"
        case failedAttemptCount = "failed_attempt_count"
        case lastAttemptedAt = "last_attempted_at"
    }
}

/// Typed Inttegro request parameters.
public struct UploadRequestAttemptsRequest: Codable, Sendable, Equatable {
    public var maxAttempts: Int?

    public init(
        maxAttempts: Int? = nil
    ) {
        self.maxAttempts = maxAttempts
    }

    private enum CodingKeys: String, CodingKey {
        case maxAttempts = "max_attempts"
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestConstraints: Codable, Sendable, Equatable {
    public var minSize: Int?
    public var maxSize: Int?
    public var exactSize: Int?
    public var contentTypes: [String]?
    public var extensions: [String]?
    public var filename: String?

    public init(
        minSize: Int? = nil,
        maxSize: Int? = nil,
        exactSize: Int? = nil,
        contentTypes: [String]? = nil,
        extensions: [String]? = nil,
        filename: String? = nil
    ) {
        self.minSize = minSize
        self.maxSize = maxSize
        self.exactSize = exactSize
        self.contentTypes = contentTypes
        self.extensions = extensions
        self.filename = filename
    }

    private enum CodingKeys: String, CodingKey {
        case minSize = "min_size"
        case maxSize = "max_size"
        case exactSize = "exact_size"
        case contentTypes = "content_types"
        case extensions
        case filename
    }
}

/// Typed Inttegro request parameters.
public struct UploadRequestConstraintsInput: Codable, Sendable, Equatable {
    public var minSize: Int?
    public var maxSize: Int?
    public var exactSize: Int?
    public var contentTypes: [String]?
    public var extensions: [String]?
    public var filename: String?

    public init(
        minSize: Int? = nil,
        maxSize: Int? = nil,
        exactSize: Int? = nil,
        contentTypes: [String]? = nil,
        extensions: [String]? = nil,
        filename: String? = nil
    ) {
        self.minSize = minSize
        self.maxSize = maxSize
        self.exactSize = exactSize
        self.contentTypes = contentTypes
        self.extensions = extensions
        self.filename = filename
    }

    private enum CodingKeys: String, CodingKey {
        case minSize = "min_size"
        case maxSize = "max_size"
        case exactSize = "exact_size"
        case contentTypes = "content_types"
        case extensions
        case filename
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestDisplay: Codable, Sendable, Equatable {
    public var title: String?
    public var description: String?
    public var helpText: String?

    public init(
        title: String? = nil,
        description: String? = nil,
        helpText: String? = nil
    ) {
        self.title = title
        self.description = description
        self.helpText = helpText
    }

    private enum CodingKeys: String, CodingKey {
        case title
        case description
        case helpText = "help_text"
    }
}

/// Typed Inttegro request parameters.
public struct UploadRequestDisplayInput: Codable, Sendable, Equatable {
    public var title: String?
    public var description: String?
    public var helpText: String?

    public init(
        title: String? = nil,
        description: String? = nil,
        helpText: String? = nil
    ) {
        self.title = title
        self.description = description
        self.helpText = helpText
    }

    private enum CodingKeys: String, CodingKey {
        case title
        case description
        case helpText = "help_text"
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestLatestError: Codable, Sendable, Equatable {
    public var code: String?
    public var param: String?
    public var message: String?
    public var retryable: Bool?
    public var at: Date?

    public init(
        code: String? = nil,
        param: String? = nil,
        message: String? = nil,
        retryable: Bool? = nil,
        at: Date? = nil
    ) {
        self.code = code
        self.param = param
        self.message = message
        self.retryable = retryable
        self.at = at
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var uploadRequests: [UploadRequest]

    public init(
        number: Int,
        size: Int,
        uploadRequests: [UploadRequest]
    ) {
        self.number = number
        self.size = size
        self.uploadRequests = uploadRequests
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case uploadRequests = "upload_requests"
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestReview: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var decision: UploadReviewDecision
    public var fileId: String?
    public var publicMessage: String?
    public var reasons: [UploadRequestReviewReason]?
    public var reviewedAt: Date
    public var type: UploadReviewType

    public init(
        createdAt: Date,
        decision: UploadReviewDecision,
        fileId: String? = nil,
        publicMessage: String? = nil,
        reasons: [UploadRequestReviewReason]? = nil,
        reviewedAt: Date,
        type: UploadReviewType
    ) {
        self.createdAt = createdAt
        self.decision = decision
        self.fileId = fileId
        self.publicMessage = publicMessage
        self.reasons = reasons
        self.reviewedAt = reviewedAt
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case decision
        case fileId = "file_id"
        case publicMessage = "public_message"
        case reasons
        case reviewedAt = "reviewed_at"
        case type
    }
}

/// Typed Inttegro domain value.
public struct UploadRequestReviewReason: Codable, Sendable, Equatable {
    public var code: String
    public var message: String
    public var param: String?

    public init(
        code: String,
        message: String,
        param: String? = nil
    ) {
        self.code = code
        self.message = message
        self.param = param
    }
}

/// Typed Inttegro request parameters.
public struct UploadRequestReviewReasonInput: Codable, Sendable, Equatable {
    public var param: String?
    public var code: String
    public var message: String

    public init(
        param: String? = nil,
        code: String,
        message: String
    ) {
        self.param = param
        self.code = code
        self.message = message
    }
}

/// Typed Inttegro request parameters.
public struct VerifyOTPRequest: Codable, Sendable, Equatable {
    public var transactionId: String
    public var recipient: String
    public var token: String

    public init(
        transactionId: String,
        recipient: String,
        token: String
    ) {
        self.transactionId = transactionId
        self.recipient = recipient
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case transactionId = "transaction_id"
        case recipient
        case token
    }
}
