// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_tts",
    // The plugin's own floor, not the app's. Kpnovel ships at iOS 17, but a plugin that declares
    // more than it needs excludes apps for no reason.
    platforms: [
        .iOS("13.0")
    ],
    products: [
        // Swift Package Manager does not allow an underscore in a library name, so the library is
        // flutter-tts while the target stays flutter_tts.
        .library(name: "flutter-tts", targets: ["flutter_tts"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_tts",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: []
        )
    ]
)
