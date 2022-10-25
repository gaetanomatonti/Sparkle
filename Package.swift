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
      name: "Sparkle",
      targets: ["Sparkle", "SparkleCSS", "SparkleHTML", "SparkleTools"]
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
    .target(
      name: "SparkleHTML",
      dependencies: ["SparkleCSS", "SparkleTools"]
    ),
    .target(
      name: "Sparkle",
      dependencies: ["SparkleCSS", "SparkleHTML", "SparkleTools"]
    ),
    .testTarget(
      name: "SparkleTests",
      dependencies: ["Sparkle"]
    ),
    .testTarget(
      name: "SparkleCSSTests",
      dependencies: ["SparkleCSS"]
    ),
    .testTarget(
      name: "SparkleHTMLTests",
      dependencies: ["SparkleHTML"]
    )
  ]
)
