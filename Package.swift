// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BECollectionView",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BECollectionView_Core",
            targets: ["BECollectionView_Core"]
        ),
        .library(
            name: "BECollectionView_Combine",
            targets: ["BECollectionView_Combine"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/CombineCommunity/CombineCocoa.git", from: "0.4.0")
    ],
    targets: [
        .target(
            name: "BECollectionView_Core"
        ),
        .target(
            name: "BECollectionView_Combine",
            dependencies: [
                "BECollectionView_Core",
                "CombineCocoa"
            ]
        )
    ]
)
