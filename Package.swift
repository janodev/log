// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "log",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "LogDynamic", type: .dynamic, targets: ["Log"]),
        .library(name: "LogStatic", type: .static, targets: ["Log"])
    ],
    dependencies: [
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
