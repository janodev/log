// swift-tools-version:5.6
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
        .package(url: "git@github.com:apple/swift-docc-plugin.git", branch: "main")
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
