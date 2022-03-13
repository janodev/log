// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "log",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "Log", type: .dynamic, targets: ["Log"]),
        .library(name: "LogStatic", type: .static, targets: ["Log"])
    ],
    dependencies: [
        // https://github.com/apple/swift-docc-plugin/pull/4/commits/16017355a57ebacada2ca8517e62c450972b98ca
        .package(url: "git@github.com:apple/swift-docc-plugin.git", branch: "16017355a57ebacada2ca8517e62c450972b98ca")
    ],
    targets: [
        .target(
            name: "Log",
            dependencies: [
            ],
            path: "sources/main"
        ),
        .testTarget(
            name: "LogTests",
            dependencies: ["Log"],
            path: "sources/tests"
        )
    ]
)
