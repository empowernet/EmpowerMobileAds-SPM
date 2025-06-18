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
            targets: ["EmpowerMobileAds"]
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
        .binaryTarget(
            name: "EmpowerMobileAdsCore",
            url: "https://cdn.empower.net/sdk/mobile/ios/EmpowerMobileAds-6.6.0.zip",
            checksum: "b58725bb93edf68d5a8e657a61cf5f86fec5e9c706fe821f64b8f50773c88b01"
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
        ),
        .target(
            name: "EmpowerMobileAds",
            dependencies: [
                "EmpowerMobileAdsCore",
                "AppLovinSDK",
                "DTBiOSSDK",
                "AppLovinMediationAmazonAdMarketplaceAdapter",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ],
            path: "EmpowerMobileAdsTarget"
        )
    ]
)
