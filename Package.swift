// swift-tools-version: 6.0

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "swift-conformable-existential",
    platforms: [.macOS(.v14), .iOS(.v15), .tvOS(.v15), .watchOS(.v8), .macCatalyst(.v15)],
    products: [
        .library(
            name: "SwiftConformableExistential",
            targets: ["SwiftConformableExistential"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-syntax.git", from: "600.0.0"),
        .package(url: "https://github.com/stansmida/swift-extras.git", from: "0.7.5"),
        .package(url: "https://github.com/stansmida/swift-syntax-extras.git", from: "0.6.0"),
    ],
    targets: [

        // Library that exposes a macro as part of its API, which is used in client programs.
        .target(
            name: "SwiftConformableExistential",
            dependencies: [
                "SwiftConformableExistentialMacros",
                .product(name: "SwiftExtras", package: "swift-extras"),
                .product(name: "SwiftSyntaxExtras", package: "swift-syntax-extras"),
            ],
            swiftSettings: [.enableExperimentalFeature("AccessLevelOnImport")]
        ),

        // Macro implementation that performs the source transformation of a macro.
        .macro(
            name: "SwiftConformableExistentialMacros",
            dependencies: [
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
                .product(name: "SwiftSyntaxExtras", package: "swift-syntax-extras"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
            ]
        ),

        .testTarget(
            name: "SwiftConformableExistentialMacrosTests",
            dependencies: [
                "SwiftConformableExistentialMacros",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
            ]
        ),

        .testTarget(
            name: "SwiftConformableExistentialTests",
            dependencies: [
                "SwiftConformableExistential",
            ]
        ),
    ]
)
