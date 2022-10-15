# Sparkle

Make the web shine. ✨

> Note that the software provided in this package is still in early development, and APIs are subject to changes.

## Static Site Generation

Sparkle takes advantage of SSG (Static Site Generation) to generate static websites with a DSL powered by Swift.
Static websites are generated at build time and immediately rendered on the client side, shortening the browser's load times.

## Creating a Website

To create a website using Sparkle, create a Swift Package in Xcode, then add Sparkle as a dependency in your `Package.swift`.

```swift
dependencies: [
  .package(url: "https://github.com/gaetanomatonti/Sparkle.git", branch: "main")
],
```

Create an executable target that depends on Sparkle.

```swift
targets: [
  .executableTarget(
    name: "MyWebsite",
    dependencies: [
      .product(name: "Sparkle", package: "Sparkle")
    ]
  )
]
```

Create `main.swift` in your target's `Source` folder. This is the main entry point of your target. Here you can prompt the generation of your website.

```swift
struct MyWebsite: Site {
  var homepage: Page {
    Home()
  }
}

try MyWebsite().generate()
```

As a result of the generation, files will be created under your package's `Output` directory.

Hooray! You've created your very first website with Sparkle.
