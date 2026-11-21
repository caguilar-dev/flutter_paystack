// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "flutter_paystack",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "flutter-paystack", targets: ["flutter_paystack"]),
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
    ],
    targets: [
        .target(
            name: "flutter_paystack",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
            ],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("include/flutter_paystack")],
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
            ]
        ),
    ]
)
