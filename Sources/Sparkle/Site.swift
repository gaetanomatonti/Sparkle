import Foundation
import SparkleCSS
import SparkleHTML
import SparkleTools

/// A protocol defining requirements for a website.
public protocol Site {
  /// The base `URL` of the website.
  var baseURL: URL { get }

  /// The locale of the website.
  var locale: Locale { get }

  /// The home page of the website.
  var homepage: Page { get }

  /// The list of additional pages that should be generated.
  var additionalPages: [Page] { get }
}

public extension Site {
  var baseURL: URL {
    URL(string: "https://example.org")!
  }

  var locale: Locale {
    Locale(identifier: "en_US")
  }

  var additionalPages: [Page] {
    []
  }
}

extension Site {
  /// Configures the CSS renderer.
  /// - Parameter configure: A closure that allows to configure the main `Renderer` instance.
  public func configureRenderer(_ configure: (Renderer) -> Void) {
    configure(EnvironmentValues.styleSheetRenderer)
  }

  /// Generates the site at the default `Output` directory of the package.
  public func generate(_ file: StaticString = #file) throws {
    let filePath = URL(fileURLWithPath: file.description)
    let packagePath = FileManager.default.packagePath(from: filePath)
    let outputPath = packagePath.appendingPathComponent("Output")

    let htmlGenerator = Generator(content: homepage.render())
    try htmlGenerator.write(file: "index", with: "html", to: outputPath)

    let cssGenerator = Generator(content: EnvironmentValues.styleSheetRenderer.render())
    try cssGenerator.write(file: "styles", with: "css", to: outputPath)
  }
}
