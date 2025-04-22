// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "hacker-news-top-stories",
    platforms: [.macOS(.v12)],
    dependencies: [
      .package(url: "https://github.com/raycast/extensions-swift-tools.git", from: "1.0.5"),
    ],
    targets: [
      .executableTarget(
        name: "HackerNewsTopStories",
        dependencies: [
          .product(name: "RaycastSwiftMacros", package: "extensions-swift-tools"),
          .product(name: "RaycastSwiftPlugin", package: "extensions-swift-tools"),
          .product(name: "RaycastTypeScriptPlugin", package: "extensions-swift-tools"),
        ],
        path: "Sources",
      ),
    ]
)
