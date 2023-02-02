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

extension Site {
  public var baseURL: URL {
    URL(string: "https://example.org")!
  }

  public var locale: Locale {
    Locale(identifier: "en_US")
  }

  public var additionalPages: [Page] {
    []
  }

  /// The `URL` of the directory where all generated files should be saved.
  private var outputPath: URL {
    let filePath = URL(fileURLWithPath: #file.description)
    let packagePath = FileManager.default.packagePath(from: filePath)
    let outputPath = packagePath.appendingPathComponent("Output")

    return outputPath
  }

  /// Configures the CSS rules container.
  ///
  /// Use this method to add pre-existent or custom rules to be rendered into your stylesheet.
  /// - Parameter configure: A closure that allows to configure the `RulesContainer` instance in the environment.
  public func configureStyleSheet(_ configure: @escaping (RulesContainer) async -> Void) {
    Task {
      await configure(EnvironmentValues.rulesContainer)
    }
  }

  /// Generates the site at the default `Output` directory of the package.
  /// - Parameter indentation: The indentation to use when rendering code in the HTML and CSS files.
  public func generate(with indentation: Indentation = Indentation(), _ file: StaticString = #file) async throws {
    try generateHTML(with: indentation, to: outputPath)
    try await generateCSS(with: indentation, to: outputPath)
  }

  /// Generates the HTML files of the site at the default `Output` directory of the package.
  /// - Parameter indentation: The indentation to use when rendering code in the HTML file.
  func generateHTML(with indentation: Indentation, to path: URL) throws {
    let renderer = HTMLRenderer()
    let renderedContent = renderer.render(homepage)
    let htmlGenerator = FileGenerator(content: renderedContent)
    try htmlGenerator.write(file: "index", with: "html", to: path)
  }

  /// Generates the CSS files of the site at the default `Output` directory of the package.
  /// - Parameter indentation: The indentation to use when rendering code CSS file.
  func generateCSS(with indentation: Indentation, to path: URL) async throws {
    let renderer = StyleSheetRenderer(indentation: indentation)
    let renderedContent = await renderer.render()
    let cssGenerator = FileGenerator(content: renderedContent)
    try cssGenerator.write(file: "styles", with: "css", to: path)
  }
}
