// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Sparkle",
  platforms: [
    .macOS(.v12)
  ],
  products: [
    .library(
      name: "SparkleCSS",
      targets: ["SparkleCSS"]
    ),
    .library(
      name: "SparkleTools",
      targets: ["SparkleTools"]
    )
  ],
  targets: [
    .target(
      name: "SparkleTools",
      dependencies: []
    ),
    .target(
      name: "SparkleCSS",
      dependencies: ["SparkleTools"]
    ),
    .testTarget(
      name: "SparkleCSSTests",
      dependencies: ["SparkleCSS"]
    )
  ]
)
