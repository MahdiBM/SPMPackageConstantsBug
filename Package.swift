// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/// Uncomment this, and the `ExistentialAny` settings **will** take effect.
/// Comment the one below instead.
//let swiftSettings: [SwiftSetting] = [
//    .unsafeFlags(["-enable-upcoming-feature", "ExistentialAny"])
//]

let package = Package(
    name: "SPMPackageConstantsBug",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SPMPackageConstantsBug",
            targets: ["SPMPackageConstantsBug"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SPMPackageConstantsBug",
            swiftSettings: swiftSettings
        )
    ]
)


/// Uncomment this, and the `ExistentialAny` settings **won't** take effect.
/// Comment the one above instead.
let swiftSettings: [SwiftSetting] = [
    .unsafeFlags(["-enable-upcoming-feature", "ExistentialAny"])
]
