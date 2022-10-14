// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Unicorn",
  platforms: [
    .macOS(.v12)
  ],
  products: [
    .library(
      name: "UnicornCSS",
      targets: ["UnicornCSS"]
    ),
    .library(
      name: "UnicornTools",
      targets: ["UnicornTools"]
    )
  ],
  targets: [
    .target(
      name: "UnicornTools",
      dependencies: []
    ),
    .target(
      name: "UnicornCSS",
      dependencies: ["UnicornTools"]
    ),
    .testTarget(
      name: "UnicornCSSTests",
      dependencies: ["UnicornCSS"]
    )
  ]
)
