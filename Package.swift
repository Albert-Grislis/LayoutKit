// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "LayoutKit",
            type: .dynamic,
            targets: [
                "LayoutKit",
            ]
        ),
    ],
    targets: [
        .target(
            name: "LayoutKit",
            dependencies: []
        ),
    ]
)
