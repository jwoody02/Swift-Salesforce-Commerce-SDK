// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift-Salesforce-Commerce-SDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Swift-Salesforce-Commerce-SDK",
            targets: ["Swift-Salesforce-Commerce-SDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", from: "1.2.0"),
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.3.2"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Swift-Salesforce-Commerce-SDK"),
        .testTarget(
            name: "Swift-Salesforce-Commerce-SDKTests",
            dependencies: ["Swift-Salesforce-Commerce-SDK"]),
    ]
)
