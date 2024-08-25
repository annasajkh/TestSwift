// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSwift",
    dependencies: [
        .package(url: "https://github.com/STREGAsGate/Raylib.git", branch: "master")
    ],
    targets: [
        .executableTarget(
            name: "TestSwift",
            dependencies: ["Raylib"],
            path: "Scripts",
            resources: [
                .copy("../Assets")
            ]
        ),
    ]
)