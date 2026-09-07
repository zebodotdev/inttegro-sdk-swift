// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "inttegro-sdk-swift",
    platforms: [.macOS(.v12)],
    products: [.library(name: "Inttegro", targets: ["Inttegro"])],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", exact: "1.5.0"),
    ],
    targets: [
        .target(name: "Inttegro"),
        .testTarget(name: "InttegroTests", dependencies: ["Inttegro"]),
    ]
)
