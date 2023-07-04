//  swift-tools-version: 5.9
//
//  Package.swift
//  Countries
//
//  Created by david-swift on 04.07.2023.
//

import PackageDescription

/// The Countries package.
let package = Package(
    name: "Countries",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "Countries",
            targets: ["Countries"]
        ),
        .executable(name: "Countries Test", targets: ["CountriesTest"])
    ],
    dependencies: [
        .package(url: "https://github.com/david-swift/GraphQLKit-macOS", from: "0.1.4"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.0"),
        .package(url: "https://github.com/lukepistrol/SwiftLintPlugin", from: "0.52.3")
    ],
    targets: [
        .target(
            name: "Countries",
            dependencies: [
                .product(name: "GraphQLKit", package: "GraphQLKit-macOS"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON")
            ],
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        ),
        .executableTarget(
            name: "CountriesTest",
            dependencies: [
                "Countries",
                .product(name: "GraphQLKit", package: "GraphQLKit-macOS")
            ],
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        )
    ]
)
