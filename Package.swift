// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "EmpowerMobileAds",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "EmpowerMobileAds",
            targets: ["EmpowerMobileAdsWrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "12.6.0"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios.git",
            from: "3.26.1"
        )
    ],
    targets: [
        // MARK: - Wrapper Target
        .target(
            name: "EmpowerMobileAdsWrapper",
            dependencies: [
                .target(name: "EmpowerMobileAds"),
                .target(name: "AppLovinSDK"),
                .target(name: "DTBiOSSDK"),
                .target(name: "AppLovinMediationAmazonAdMarketplaceAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ],
            path: "EmpowerMobileAdsTarget"
        ),

        // MARK: - Binary Targets
        .binaryTarget(
            name: "EmpowerMobileAds",
            url: "https://cdn.empower.net/sdk/mobile/ios/EmpowerMobileAds-7.0.1.zip",
            checksum: "ed5312e14a2287b65a64e9ca7ebeac4d7151d1531d3e903f8f4e868bfb5f4d79"
        ),

        .binaryTarget(
            name: "AppLovinSDK",
            url: "https://cdn.empower.net/sdk/mobile/ios/AppLovinSDK.zip",
            checksum: "593fdef6e0bae41dfb805cbdc5d3323c1c1d216a50cfa0ea229f21ea4cded925"
        ),

        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://cdn.empower.net/sdk/mobile/ios/DTBiOSSDK.zip",
            checksum: "914bd6658513f69726fc93733ef65991202b4f134fb4e091110ec1054a5443aa"
        ),

        .binaryTarget(
            name: "AppLovinMediationAmazonAdMarketplaceAdapter",
            url: "https://cdn.empower.net/sdk/mobile/ios/AppLovinMediationAmazonAdMarketplaceAdapter.zip",
            checksum: "9616a54148fc39f2ed9ff373c92d81aa0164f77984ae6822dbd8bb21a6ee838b"
        )
    ]
)
