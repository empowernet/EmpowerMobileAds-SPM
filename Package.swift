// swift-tools-version:5.6
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
    targets: [
        .binaryTarget(
            name: "EmpowerMobileAds",
            url: "https://cdn.empower.net/sdk/mobile/ios/EmpowerMobileAds-6.4.4.zip",
            checksum: "31d4dd7b1b6376f4acf3a13f0091afe24b86672309be6b34f34f6f7664957e1c"
        )
    ]
)
