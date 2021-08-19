// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v13)],
    products: [
        .library(
            name: "LayoutKit",
            type: .dynamic,
            targets: ["LayoutKit"]),
    ],
    targets: [
        .target(
            name: "LayoutKit",
            dependencies: []),
    ]
)
