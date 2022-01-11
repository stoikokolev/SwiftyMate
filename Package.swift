// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyMate",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SwiftyMate",
            targets: ["SwiftyMate"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftyMate",
            dependencies: [])
    ]
)
