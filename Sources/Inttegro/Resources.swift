// Typed Inttegro API resources.
import Foundation

/// Operations for Inttegro apps.
public struct Apps: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create an application
    public func create(_ request: CreateApplicationRequest, options: RequestOptions = .init()) async throws -> Application {
        try await client.request(method: "POST", path: "/apps/create", body: request, options: options, operation: "apps.create", field: "app", authenticated: true)
    }

    /// Retrieve the authenticated application
    public func lookup(options: RequestOptions = .init()) async throws -> Application {
        try await client.request(method: "POST", path: "/apps/lookup", body: EmptyBody(), options: options, operation: "apps.lookup", field: "app", authenticated: true)
    }

    /// Update the authenticated application
    public func update(_ request: UpdateApplicationRequest, options: RequestOptions = .init()) async throws -> Application {
        try await client.request(method: "POST", path: "/apps/update", body: request, options: options, operation: "apps.update", field: "app", authenticated: true)
    }

}

/// Operations for Inttegro balance transactions.
public struct BalanceTransactions: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Look up a balance transaction
    public func lookup(_ request: LookupBalanceTransactionRequest, options: RequestOptions = .init()) async throws -> BalanceTransaction {
        try await client.request(method: "POST", path: "/balance_transactions/lookup", body: request, options: options, operation: "balance_transactions.lookup", field: "transaction", authenticated: true)
    }

    /// Page through balance transactions
    public func page(_ request: PageBalanceTransactionsRequest, options: RequestOptions = .init()) async throws -> BalanceTransactionPage {
        try await client.request(method: "POST", path: "/balance_transactions/page", body: request, options: options, operation: "balance_transactions.page", field: "page", authenticated: true)
    }

}

/// Operations for Inttegro balances.
public struct Balances: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Retrieve your balance
    public func get(options: RequestOptions = .init()) async throws -> [String: CurrencyBalanceSnapshot] {
        try await client.request(method: "POST", path: "/balances", body: EmptyBody(), options: options, operation: "balances.get", field: "balances", authenticated: true)
    }

}

/// Operations for Inttegro broadcasts.
public struct Broadcasts: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Look up a broadcast
    public func lookup(_ request: LookupBroadcastRequest, options: RequestOptions = .init()) async throws -> BroadcastDetail {
        try await client.request(method: "POST", path: "/broadcasts/lookup", body: request, options: options, operation: "broadcasts.lookup", field: "broadcast", authenticated: true)
    }

    /// Cancel a broadcast
    public func cancel(_ request: CancelBroadcastRequest, options: RequestOptions = .init()) async throws -> BroadcastDetail {
        try await client.request(method: "POST", path: "/broadcasts/cancel", body: request, options: options, operation: "broadcasts.cancel", field: "broadcast", authenticated: true)
    }

}

/// Operations for Inttegro chimes.
public struct Chimes: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Send a Chime
    public func send(_ request: SendChimeRequest, options: RequestOptions = .init()) async throws -> Chime {
        try await client.request(method: "POST", path: "/chimes/send", body: request, options: options, operation: "chimes.send", field: "chime", authenticated: true)
    }

    /// Look up a Chime
    public func lookup(_ request: LookupChimeRequest, options: RequestOptions = .init()) async throws -> Chime {
        try await client.request(method: "POST", path: "/chimes/lookup", body: request, options: options, operation: "chimes.lookup", field: "chime", authenticated: true)
    }

    /// Page through Chimes
    public func page(_ request: PageChimesRequest, options: RequestOptions = .init()) async throws -> ChimePage {
        try await client.request(method: "POST", path: "/chimes/page", body: request, options: options, operation: "chimes.page", field: "page", authenticated: true)
    }

    /// Schedule Chimes
    public func schedule(_ request: ScheduleChimeRequest, options: RequestOptions = .init()) async throws -> ScheduleCreationDetail {
        try await client.request(method: "POST", path: "/chimes/schedule", body: request, options: options, operation: "chimes.schedule", field: "scheduled_chime", authenticated: true)
    }

    /// Broadcast Chimes
    public func broadcast(_ request: BroadcastRequest, options: RequestOptions = .init()) async throws -> BroadcastCreationDetail {
        try await client.request(method: "POST", path: "/chimes/broadcast", body: request, options: options, operation: "chimes.broadcast", field: "broadcast", authenticated: true)
    }

}

/// Operations for Inttegro customers.
public struct Customers: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a customer
    public func create(_ request: CreateCustomerRequest, options: RequestOptions = .init()) async throws -> Customer {
        try await client.request(method: "POST", path: "/customers/create", body: request, options: options, operation: "customers.create", field: "customer", authenticated: true)
    }

    /// Look up a customer
    public func lookup(_ request: LookupCustomerRequest, options: RequestOptions = .init()) async throws -> Customer {
        try await client.request(method: "POST", path: "/customers/lookup", body: request, options: options, operation: "customers.lookup", field: "customer", authenticated: true)
    }

    /// Update a customer
    public func update(_ request: UpdateCustomerRequest, options: RequestOptions = .init()) async throws -> Customer {
        try await client.request(method: "POST", path: "/customers/update", body: request, options: options, operation: "customers.update", field: "customer", authenticated: true)
    }

    /// Page through customers
    public func page(_ request: PageCustomersRequest, options: RequestOptions = .init()) async throws -> CustomerPage {
        try await client.request(method: "POST", path: "/customers/page", body: request, options: options, operation: "customers.page", field: "page", authenticated: true)
    }

}

/// Operations for Inttegro file links.
public struct FileLinks: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a file link
    public func create(_ request: CreateFileLinkRequest, options: RequestOptions = .init()) async throws -> FileLinkCreation {
        try await client.request(method: "POST", path: "/file_links/create", body: request, options: options, operation: "file_links.create", field: nil, authenticated: true)
    }

    /// Lookup a file link
    public func lookup(_ request: LookupFileLinkRequest, options: RequestOptions = .init()) async throws -> FileLink {
        try await client.request(method: "POST", path: "/file_links/lookup", body: request, options: options, operation: "file_links.lookup", field: "file_link", authenticated: true)
    }

    /// Page file links
    public func page(_ request: PageFileLinksRequest, options: RequestOptions = .init()) async throws -> FileLinkPage {
        try await client.request(method: "POST", path: "/file_links/page", body: request, options: options, operation: "file_links.page", field: "page", authenticated: true)
    }

    /// Revoke a file link
    public func revoke(_ request: RevokeFileLinkRequest, options: RequestOptions = .init()) async throws -> FileLink {
        try await client.request(method: "POST", path: "/file_links/revoke", body: request, options: options, operation: "file_links.revoke", field: "file_link", authenticated: true)
    }

    /// Open a public file link
    public func `open`(_ request: OpenFileLinkRequest) async throws -> FileDownload {
        try await client.openFileLink(path: "/file_links/open", request: request, operation: "file_links.open")
    }

}

/// Operations for Inttegro file references.
public struct FileReferences: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Reconcile file references
    public func reconcile(_ request: FileReferenceReconcileRequest, options: RequestOptions = .init()) async throws -> FileReferenceReconciliation {
        try await client.request(method: "POST", path: "/file_references/reconcile", body: request, options: options, operation: "file_references.reconcile", field: nil, authenticated: true)
    }

}

/// Operations for Inttegro files.
public struct Files: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a file
    public func create(_ request: CreateFileRequest, options: RequestOptions = .init()) async throws -> File {
        try await client.uploadFile(path: "/files/create", request: request, options: options, operation: "files.create", field: "file")
    }

    /// Lookup a file
    public func lookup(_ request: LookupFileRequest, options: RequestOptions = .init()) async throws -> File {
        try await client.request(method: "POST", path: "/files/lookup", body: request, options: options, operation: "files.lookup", field: "file", authenticated: true)
    }

    /// Page files
    public func page(_ request: PageFilesRequest, options: RequestOptions = .init()) async throws -> FilePage {
        try await client.request(method: "POST", path: "/files/page", body: request, options: options, operation: "files.page", field: "page", authenticated: true)
    }

    /// Deliver file contents
    public func contents(_ request: FileContentsRequest, options: RequestOptions = .init()) async throws -> FileDownload {
        try await client.download(method: "POST", path: "/files/contents", body: request, options: options, operation: "files.contents", authenticated: true)
    }

    /// Delete a file
    public func delete(_ request: DeleteFileRequest, options: RequestOptions = .init()) async throws -> File {
        try await client.request(method: "POST", path: "/files/delete", body: request, options: options, operation: "files.delete", field: "file", authenticated: true)
    }

}

/// Operations for Inttegro financial accounts.
public struct FinancialAccounts: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a financial account
    public func create(_ request: FinancialAccountCreateRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/create", body: request, options: options, operation: "financial_accounts.create", field: "account", authenticated: true)
    }

    /// Lookup a financial account
    public func lookup(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/lookup", body: request, options: options, operation: "financial_accounts.lookup", field: "account", authenticated: true)
    }

    /// Page through financial accounts
    public func page(_ request: FinancialAccountPageRequest, options: RequestOptions = .init()) async throws -> FinancialAccountPage {
        try await client.request(method: "POST", path: "/financial_accounts/page", body: request, options: options, operation: "financial_accounts.page", field: "page", authenticated: true)
    }

    /// Connect a financial account
    public func connect(_ request: FinancialAccountCreateRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/connect", body: request, options: options, operation: "financial_accounts.connect", field: "account", authenticated: true)
    }

    /// Update a financial account
    public func update(_ request: FinancialAccountUpdateRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/update", body: request, options: options, operation: "financial_accounts.update", field: "account", authenticated: true)
    }

    /// Enable push capability
    public func enablePush(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/enable_push", body: request, options: options, operation: "financial_accounts.enable_push", field: "account", authenticated: true)
    }

    /// Disable push capability
    public func disablePush(_ request: FinancialAccountDisableRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/disable_push", body: request, options: options, operation: "financial_accounts.disable_push", field: "account", authenticated: true)
    }

    /// Disconnect a financial account
    public func disconnect(_ request: FinancialAccountDisableRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/disconnect", body: request, options: options, operation: "financial_accounts.disconnect", field: "account", authenticated: true)
    }

    /// Reconnect a financial account
    public func reconnect(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/reconnect", body: request, options: options, operation: "financial_accounts.reconnect", field: "account", authenticated: true)
    }

    /// Enable pull capability
    public func enablePull(_ request: FinancialAccountEnablePullRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/enable_pull", body: request, options: options, operation: "financial_accounts.enable_pull", field: "account", authenticated: true)
    }

    /// Disable pull capability
    public func disablePull(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/disable_pull", body: request, options: options, operation: "financial_accounts.disable_pull", field: "account", authenticated: true)
    }

}

/// Operations for Inttegro keys.
public struct Keys: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Generate a secret key
    public func generate(_ request: GenerateSecretKeyRequest, options: RequestOptions = .init()) async throws -> GeneratedSecretKey {
        try await client.request(method: "POST", path: "/keys/generate", body: request, options: options, operation: "keys.generate", field: "key", authenticated: true)
    }

    /// Page secret keys
    public func page(_ request: PageSecretKeysRequest, options: RequestOptions = .init()) async throws -> SecretKeyPage {
        try await client.request(method: "POST", path: "/keys/page", body: request, options: options, operation: "keys.page", field: "page", authenticated: true)
    }

    /// Retrieve a secret key
    public func lookup(_ request: LookupSecretKeyRequest, options: RequestOptions = .init()) async throws -> SecretKey {
        try await client.request(method: "POST", path: "/keys/lookup", body: request, options: options, operation: "keys.lookup", field: "key", authenticated: true)
    }

    /// Update a secret key
    public func update(_ request: UpdateSecretKeyRequest, options: RequestOptions = .init()) async throws -> SecretKey {
        try await client.request(method: "POST", path: "/keys/update", body: request, options: options, operation: "keys.update", field: "key", authenticated: true)
    }

    /// Revoke a secret key
    public func destroy(_ request: DestroySecretKeyRequest, options: RequestOptions = .init()) async throws -> SecretKey {
        try await client.request(method: "POST", path: "/keys/destroy", body: request, options: options, operation: "keys.destroy", field: "key", authenticated: true)
    }

    /// Retrieve secret key usage
    public func usage(_ request: SecretKeyUsageRequest, options: RequestOptions = .init()) async throws -> SecretKeyUsage {
        try await client.request(method: "POST", path: "/keys/usage", body: request, options: options, operation: "keys.usage", field: nil, authenticated: true)
    }

}

/// Operations for Inttegro message templates.
public struct MessageTemplates: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a message template
    public func create(_ request: CreateMessageTemplateRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/create", body: request, options: options, operation: "message_templates.create", field: "message_template", authenticated: true)
    }

    /// Update a message template
    public func update(_ request: UpdateMessageTemplateRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/update", body: request, options: options, operation: "message_templates.update", field: "message_template", authenticated: true)
    }

    /// Publish a message template
    public func publish(_ request: MessageTemplateIDRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/publish", body: request, options: options, operation: "message_templates.publish", field: "message_template", authenticated: true)
    }

    /// Archive a message template
    public func archive(_ request: MessageTemplateIDRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/archive", body: request, options: options, operation: "message_templates.archive", field: "message_template", authenticated: true)
    }

    /// Look up a message template
    public func lookup(_ request: MessageTemplateIDRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/lookup", body: request, options: options, operation: "message_templates.lookup", field: "message_template", authenticated: true)
    }

    /// Page message templates
    public func page(_ request: PageMessageTemplatesRequest, options: RequestOptions = .init()) async throws -> MessageTemplatesPage {
        try await client.request(method: "POST", path: "/message_templates/page", body: request, options: options, operation: "message_templates.page", field: "page", authenticated: true)
    }

    /// Render a message template preview
    public func renderPreview(_ request: RenderMessageTemplatePreviewRequest, options: RequestOptions = .init()) async throws -> MessageTemplatePreview {
        try await client.request(method: "POST", path: "/message_templates/render_preview", body: request, options: options, operation: "message_templates.render_preview", field: nil, authenticated: true)
    }

}

/// Operations for Inttegro orders.
public struct Orders: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a new order
    public func create(_ request: CreateOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/create", body: request, options: options, operation: "orders.create", field: "order", authenticated: true)
    }

    /// Lookup an order
    public func lookup(_ request: LookupOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/lookup", body: request, options: options, operation: "orders.lookup", field: "order", authenticated: true)
    }

    /// Update an order
    public func update(_ request: UpdateOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/update", body: request, options: options, operation: "orders.update", field: "order", authenticated: true)
    }

    /// Pay for an order
    public func pay(_ request: PayOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/pay", body: request, options: options, operation: "orders.pay", field: "order", authenticated: true)
    }

    /// Confirm payment with token
    public func confirmPayment(_ request: ConfirmPaymentRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/confirm_payment", body: request, options: options, operation: "orders.confirm_payment", field: "order", authenticated: true)
    }

    /// Request payment confirmation
    public func requestConfirmation(_ request: RequestConfirmationRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/request_confirmation", body: request, options: options, operation: "orders.request_confirmation", field: "order", authenticated: true)
    }

    /// Cancel an order
    public func cancel(_ request: CancelOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/cancel", body: request, options: options, operation: "orders.cancel", field: "order", authenticated: true)
    }

    /// Finalize an order
    public func finalize(_ request: FinalizeOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/finalize", body: request, options: options, operation: "orders.finalize", field: "order", authenticated: true)
    }

    /// Complete an order
    public func complete(_ request: CompleteOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/complete", body: request, options: options, operation: "orders.complete", field: "order", authenticated: true)
    }

    /// Send an order invoice
    public func sendInvoice(_ request: OrderDocumentDeliveryRequest, options: RequestOptions = .init()) async throws -> OrderDocumentDeliveryResult {
        try await client.request(method: "POST", path: "/orders/send_invoice", body: request, options: options, operation: "orders.send_invoice", field: nil, authenticated: true)
    }

    /// Send an order receipt
    public func sendReceipt(_ request: OrderDocumentDeliveryRequest, options: RequestOptions = .init()) async throws -> OrderDocumentDeliveryResult {
        try await client.request(method: "POST", path: "/orders/send_receipt", body: request, options: options, operation: "orders.send_receipt", field: nil, authenticated: true)
    }

    /// Page through orders
    public func page(_ request: PageOrdersRequest, options: RequestOptions = .init()) async throws -> OrderPage {
        try await client.request(method: "POST", path: "/orders/page", body: request, options: options, operation: "orders.page", field: "page", authenticated: true)
    }

    /// Create a refund using the compatibility URL
    public func refund(_ request: CreateRefundRequest, options: RequestOptions = .init()) async throws -> Refund {
        try await client.request(method: "POST", path: "/orders/refund", body: request, options: options, operation: "orders.refund", field: "refund", authenticated: true)
    }

}

/// Operations for Inttegro otp.
public struct Otp: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Initiate OTP transaction
    public func initiate(_ request: InitiateOTPRequest, options: RequestOptions = .init()) async throws -> OTPTransaction {
        try await client.request(method: "POST", path: "/otp/initiate", body: request, options: options, operation: "otp.initiate", field: "transaction", authenticated: true)
    }

    /// Verify OTP token
    public func verify(_ request: VerifyOTPRequest, options: RequestOptions = .init()) async throws -> OTPVerification {
        try await client.request(method: "POST", path: "/otp/verify", body: request, options: options, operation: "otp.verify", field: nil, authenticated: true)
    }

    /// Lookup OTP transaction
    public func lookup(_ request: LookupOTPRequest, options: RequestOptions = .init()) async throws -> OTPTransaction {
        try await client.request(method: "POST", path: "/otp/lookup", body: request, options: options, operation: "otp.lookup", field: "transaction", authenticated: true)
    }

}

/// Operations for Inttegro payment methods.
public struct PaymentMethods: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Tokenize a payment method
    public func tokenize(_ request: TokenizeMobileMoneyPaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/tokenize", body: request, options: options, operation: "payment_methods.tokenize", field: "payment_method", authenticated: true)
    }

    /// Lookup a payment method
    public func lookup(_ request: LookupPaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/lookup", body: request, options: options, operation: "payment_methods.lookup", field: "payment_method", authenticated: true)
    }

    /// Page payment methods
    public func page(_ request: PaymentMethodPageRequest, options: RequestOptions = .init()) async throws -> PaymentMethodPage {
        try await client.request(method: "POST", path: "/payment_methods/page", body: request, options: options, operation: "payment_methods.page", field: "page", authenticated: true)
    }

    /// Update a payment method
    public func update(_ request: UpdatePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/update", body: request, options: options, operation: "payment_methods.update", field: "payment_method", authenticated: true)
    }

    /// Activate a payment method
    public func activate(_ request: ActivatePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/activate", body: request, options: options, operation: "payment_methods.activate", field: "payment_method", authenticated: true)
    }

    /// Deactivate a payment method
    public func deactivate(_ request: DisactivatePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/disactivate", body: request, options: options, operation: "payment_methods.deactivate", field: "payment_method", authenticated: true)
    }

    /// Archive a payment method
    public func archive(_ request: ArchivePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/archive", body: request, options: options, operation: "payment_methods.archive", field: "payment_method", authenticated: true)
    }

    /// Unarchive a payment method
    public func unarchive(_ request: UnarchivePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/unarchive", body: request, options: options, operation: "payment_methods.unarchive", field: "payment_method", authenticated: true)
    }

    /// Get payment method settings
    public func settings(options: RequestOptions = .init()) async throws -> PaymentMethodSettings {
        try await client.request(method: "POST", path: "/payment_methods/settings", body: EmptyBody(), options: options, operation: "payment_methods.settings", field: "settings", authenticated: true)
    }

}

/// Operations for Inttegro payouts.
public struct Payouts: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Schedule a payout
    public func schedule(_ request: SchedulePayoutRequest, options: RequestOptions = .init()) async throws -> Payout {
        try await client.request(method: "POST", path: "/payouts/schedule", body: request, options: options, operation: "payouts.schedule", field: "payout", authenticated: true)
    }

    /// Lookup a payout
    public func lookup(_ request: LookupPayoutRequest, options: RequestOptions = .init()) async throws -> Payout {
        try await client.request(method: "POST", path: "/payouts/lookup", body: request, options: options, operation: "payouts.lookup", field: "payout", authenticated: true)
    }

    /// Set payout destinations
    public func setDestinations(_ request: SetPayoutDestinationsRequest, options: RequestOptions = .init()) async throws -> PayoutSettingsMutation {
        try await client.request(method: "POST", path: "/payouts/set_destinations", body: request, options: options, operation: "payouts.set_destinations", field: "settings", authenticated: true)
    }

    /// Get payout settings
    public func settings(options: RequestOptions = .init()) async throws -> PayoutSettingsLookup {
        try await client.request(method: "POST", path: "/payouts/settings", body: EmptyBody(), options: options, operation: "payouts.settings", field: "settings", authenticated: true)
    }

    /// Disable automatic payouts
    public func disable(options: RequestOptions = .init()) async throws -> PayoutSettingsMutation {
        try await client.request(method: "POST", path: "/payouts/disable", body: EmptyBody(), options: options, operation: "payouts.disable", field: "settings", authenticated: true)
    }

    /// Enable automatic payouts
    public func enable(options: RequestOptions = .init()) async throws -> PayoutSettingsMutation {
        try await client.request(method: "POST", path: "/payouts/enable", body: EmptyBody(), options: options, operation: "payouts.enable", field: "settings", authenticated: true)
    }

    /// Page through payouts
    public func page(_ request: PagePayoutsRequest, options: RequestOptions = .init()) async throws -> PayoutPage {
        try await client.request(method: "POST", path: "/payouts/page", body: request, options: options, operation: "payouts.page", field: "page", authenticated: true)
    }

    /// Cancel a scheduled payout
    public func cancel(_ request: CancelPayoutRequest, options: RequestOptions = .init()) async throws -> Payout {
        try await client.request(method: "POST", path: "/payouts/cancel", body: request, options: options, operation: "payouts.cancel", field: "payout", authenticated: true)
    }

}

/// Operations for Inttegro prices.
public struct Prices: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a price
    public func create(_ request: CatalogPriceParams, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/create", body: request, options: options, operation: "prices.create", field: "price", authenticated: true)
    }

    /// Lookup a price
    public func lookup(_ request: LookupPriceRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/lookup", body: request, options: options, operation: "prices.lookup", field: "price", authenticated: true)
    }

    /// Page through prices
    public func page(_ request: PricePageRequest, options: RequestOptions = .init()) async throws -> PricePage {
        try await client.request(method: "POST", path: "/prices/page", body: request, options: options, operation: "prices.page", field: "page", authenticated: true)
    }

    /// Update a price
    public func update(_ request: UpdatePriceRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/update", body: request, options: options, operation: "prices.update", field: "price", authenticated: true)
    }

    /// Activate a price
    public func activate(_ request: PriceActionRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/activate", body: request, options: options, operation: "prices.activate", field: "price", authenticated: true)
    }

    /// Deactivate a price
    public func deactivate(_ request: PriceActionRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/deactivate", body: request, options: options, operation: "prices.deactivate", field: "price", authenticated: true)
    }

    /// Archive a price
    public func archive(_ request: PriceActionRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/archive", body: request, options: options, operation: "prices.archive", field: "price", authenticated: true)
    }

}

/// Operations for Inttegro products.
public struct Products: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a product
    public func create(_ request: CreateProductRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/create", body: request, options: options, operation: "products.create", field: "product", authenticated: true)
    }

    /// Add a price to a product
    public func addPrice(_ request: AddProductPriceRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/products/add_price", body: request, options: options, operation: "products.add_price", field: "price", authenticated: true)
    }

    /// Lookup a product
    public func lookup(_ request: LookupProductRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/lookup", body: request, options: options, operation: "products.lookup", field: "product", authenticated: true)
    }

    /// Update a product
    public func update(_ request: UpdateProductRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/update", body: request, options: options, operation: "products.update", field: "product", authenticated: true)
    }

    /// Publish a product
    public func publish(_ request: ProductActionRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/publish", body: request, options: options, operation: "products.publish", field: "product", authenticated: true)
    }

    /// Unpublish a product
    public func unpublish(_ request: ProductActionRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/unpublish", body: request, options: options, operation: "products.unpublish", field: "product", authenticated: true)
    }

    /// Archive a product
    public func archive(_ request: ProductActionRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/archive", body: request, options: options, operation: "products.archive", field: "product", authenticated: true)
    }

    /// Page through products
    public func page(_ request: PageProductsRequest, options: RequestOptions = .init()) async throws -> ProductPage {
        try await client.request(method: "POST", path: "/products/page", body: request, options: options, operation: "products.page", field: "page", authenticated: true)
    }

}

/// Operations for Inttegro purchase intents.
public struct PurchaseIntents: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a purchase intent
    public func create(_ request: CreatePurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/create", body: request, options: options, operation: "purchase_intents.create", field: "purchase_intent", authenticated: true)
    }

    /// Update a purchase intent
    public func update(_ request: UpdatePurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/update", body: request, options: options, operation: "purchase_intents.update", field: "purchase_intent", authenticated: true)
    }

    /// Cancel a purchase intent
    public func cancel(_ request: CancelPurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/cancel", body: request, options: options, operation: "purchase_intents.cancel", field: "purchase_intent", authenticated: true)
    }

    /// Lookup a purchase intent
    public func lookup(_ request: LookupPurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/lookup", body: request, options: options, operation: "purchase_intents.lookup", field: "purchase_intent", authenticated: true)
    }

    /// List purchase intents
    public func page(_ request: PagePurchaseIntentsRequest, options: RequestOptions = .init()) async throws -> PurchaseIntentPage {
        try await client.request(method: "POST", path: "/purchase_intents/page", body: request, options: options, operation: "purchase_intents.page", field: "page", authenticated: true)
    }

}

/// Operations for Inttegro refunds.
public struct Refunds: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a refund
    public func create(_ request: CreateRefundRequest, options: RequestOptions = .init()) async throws -> Refund {
        try await client.request(method: "POST", path: "/refunds/create", body: request, options: options, operation: "refunds.create", field: "refund", authenticated: true)
    }

    /// Cancel a refund
    public func cancel(_ request: CancelRefundRequest, options: RequestOptions = .init()) async throws -> Refund {
        try await client.request(method: "POST", path: "/refunds/cancel", body: request, options: options, operation: "refunds.cancel", field: "refund", authenticated: true)
    }

    /// Look up a refund
    public func lookup(_ request: LookupRefundRequest, options: RequestOptions = .init()) async throws -> Refund {
        try await client.request(method: "POST", path: "/refunds/lookup", body: request, options: options, operation: "refunds.lookup", field: "refund", authenticated: true)
    }

    /// Page through refunds
    public func page(_ request: PageRefundsRequest, options: RequestOptions = .init()) async throws -> RefundPage {
        try await client.request(method: "POST", path: "/refunds/page", body: request, options: options, operation: "refunds.page", field: "page", authenticated: true)
    }

}

/// Operations for Inttegro schedules.
public struct Schedules: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Look up a scheduled Chime
    public func lookup(_ request: LookupScheduleRequest, options: RequestOptions = .init()) async throws -> ScheduleDetail {
        try await client.request(method: "POST", path: "/schedules/lookup", body: request, options: options, operation: "schedules.lookup", field: "scheduled_chime", authenticated: true)
    }

    /// Cancel a scheduled Chime
    public func cancel(_ request: CancelScheduleRequest, options: RequestOptions = .init()) async throws -> ScheduleCancelDetail {
        try await client.request(method: "POST", path: "/schedules/cancel", body: request, options: options, operation: "schedules.cancel", field: "scheduled_chime", authenticated: true)
    }

}

/// Operations for Inttegro specifications.
public struct Specifications: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Get country specifications
    public func countries(options: RequestOptions = .init()) async throws -> [String: CountrySpecification] {
        try await client.request(method: "POST", path: "/spec/countries", body: EmptyBody(), options: options, operation: "specifications.countries", field: "countries", authenticated: false)
    }

}

/// Operations for Inttegro upload requests.
public struct UploadRequests: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create an upload request
    public func create(_ request: CreateUploadRequestRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/create", body: request, options: options, operation: "upload_requests.create", field: "upload_request", authenticated: true)
    }

    /// Lookup an upload request
    public func lookup(_ request: LookupUploadRequestRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/lookup", body: request, options: options, operation: "upload_requests.lookup", field: "upload_request", authenticated: true)
    }

    /// Page upload requests
    public func page(_ request: PageUploadRequestsRequest, options: RequestOptions = .init()) async throws -> UploadRequestPage {
        try await client.request(method: "POST", path: "/upload_requests/page", body: request, options: options, operation: "upload_requests.page", field: "page", authenticated: true)
    }

    /// Cancel an upload request
    public func cancel(_ request: CancelUploadRequestRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/cancel", body: request, options: options, operation: "upload_requests.cancel", field: "upload_request", authenticated: true)
    }

    /// Review an upload request attempt
    public func review(_ request: ReviewUploadRequestAttemptRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/review", body: request, options: options, operation: "upload_requests.review", field: "upload_request", authenticated: true)
    }

    /// Fulfill an upload request
    public func fulfill(_ request: FulfillUploadRequest, options: RequestOptions = .init()) async throws -> UploadFulfillment {
        try await client.fulfillUpload(path: "/upload_requests/upload", request: request, options: options, operation: "upload_requests.fulfill")
    }

}
