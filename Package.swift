// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "segment-appsflyer-ios",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "segment-appsflyer-ios",
            targets: ["segment-appsflyer-ios"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios.git" , from: "4.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "segment-appsflyer-ios",
            dependencies: [
                "Segment",
                "AppsFlyerLib"
                ],
            path: "segment-appsflyer-ios/Classes",
            publicHeadersPath: ""
            ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework/releases/download/6.5.2/AppsFlyerLib.xcframework.zip",
            checksum: "da29b80c0296688488468e642094ec9a022b50319faff2ff9c05a24b13b061e6"
        )
    ]
)
