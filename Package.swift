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
            checksum: "0c22bf3e232cd104df4bc2d20cb4c06b5e8c1008ad6adef3424e335fb72c6df3"
        )
    ]
)
