// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "GoogleMaps",
    platforms: [ .iOS(.v12) ],
    products: [
        .library(
            name: "GoogleMaps",
            targets: ["GoogleMaps"]),
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/phatblat/GoogleMapsSwiftPackage/releases/download/6.1.1/GoogleMaps-6.1.1-beta.xcframework.zip",
            checksum: ""
        ),
    ]
)
