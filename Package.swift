// swift-tools-version:5.3
import PackageDescription

// Refs: https://www.appcoda.com/xcframework/
// Ref: https://developer.apple.com/documentation/xcode/distributing-binary-frameworks-as-swift-packages
let package = Package(
    name: "Texture",
    platforms: [
        .macOS(.v10_14), .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AsyncDisplayKit",
            targets: ["AsyncDisplayKit"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AsyncDisplayKit",
            url: "https://github.com/Suwatte/Texture/releases/download/3.2.0/AsyncDisplayKit.xcframework.zip",
            checksum: "1674c22316d36a1e41d9297bc4688aec31e9024e97cf68cae45fb849aa1cdf67"
        )
    ]
)