/// The application's latest GHS balance snapshot.
public struct BalanceSnapshot: Codable, Sendable, Equatable {
    public var ghs: CurrencyBalanceSnapshot

    public init(ghs: CurrencyBalanceSnapshot) {
        self.ghs = ghs
    }
}
