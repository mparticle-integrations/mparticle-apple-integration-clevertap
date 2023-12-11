// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "mParticle-CleverTap",
    platforms: [ .iOS(.v9) ],
    products: [
        .library(
            name: "mParticle-CleverTap",
            targets: ["mParticle-CleverTap"]),
    ],
    dependencies: [
      .package(name: "mParticle-Apple-SDK",
               url: "https://github.com/mParticle/mparticle-apple-sdk",
               .upToNextMajor(from: "8.0.0")),
      .package(name: "CleverTapSDK",
               url: "https://github.com/CleverTap/clevertap-ios-sdk",
               .upToNextMajor(from: "5.2.0")),
    ],
    targets: [
        .target(
            name: "mParticle-CleverTap",
            dependencies: ["mParticle-Apple-SDK", "CleverTapSDK"],
            path: "mParticle-CleverTap",
            publicHeadersPath: "."
        ),
    ]
)
