# Inttegro Swift SDK

The official server-side Swift SDK for Inttegro. This package is separate from
the native payment-sheet SDK and is suitable for Swift services on macOS and Linux.
Never embed a server API key in an iOS application; use the native payment-sheet
SDK for customer-facing apps.

Add `https://github.com/inttegro/inttegro-sdk-swift` as a Swift Package Manager
dependency and link the `Inttegro` product.

```swift
import Inttegro

let client = try Client(apiKey: ProcessInfo.processInfo.environment["INTTEGRO_API_KEY"]!)
let order = try await client.orders.lookup(.init(orderId: "order_..."))
print(order.id)
```

Resource methods return domain values such as `Order` and `Payout`; HTTP response
envelopes remain private.

## Observability and error reporting

Provide a `Telemetry` and/or `ErrorReporter` implementation to `Client`. Telemetry
emits prepared, received, decoded, and failed lifecycle events without API keys,
request bodies, or resource identifiers. Error reports are not constructed unless
a reporter is configured. The default `.unexpected` policy reports transport,
decoding, unknown, and server failures.

See the [API reference](https://swift.inttegro.dev) and
[Inttegro Studio](https://studio.inttegro.com/sdks/swift).
