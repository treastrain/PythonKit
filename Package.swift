// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "PythonKit",
    products: [
        .library(
            name: "PythonKit",
            targets: ["PythonKit"]
        )
    ],
    targets: [
        .target(
            name: "PythonKit",
            path: "PythonKit",
            swiftSettings: [
                .defaultIsolation(MainActor.self)
            ]
        ),
        .testTarget(
            name: "PythonKitTests",
            dependencies: ["PythonKit"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
