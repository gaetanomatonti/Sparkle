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
  public func configureStyleSheet(_ configure: (RulesContainer) -> Void) {
    configure(EnvironmentValues.rulesContainer)
  }

  /// Generates the site at the default `Output` directory of the package.
  /// - Parameter indentation: The indentation to use when rendering code in the HTML and CSS files.
  public func generate(with indentation: Indentation = Indentation(), _ file: StaticString = #file) throws {
    try generateHTML(with: indentation)
    try generateCSS(with: indentation)
  }

  /// Generates the HTML files of the site at the default `Output` directory of the package.
  /// - Parameter indentation: The indentation to use when rendering code in the HTML file.
  private func generateHTML(with indentation: Indentation) throws {
    let renderer = HTMLRenderer()
    let htmlGenerator = Generator(content: renderer.render(homepage))
    try htmlGenerator.write(file: "index", with: "html", to: outputPath)
    let htmlGenerator = FileGenerator(content: renderedContent)
  }

  /// Generates the CSS files of the site at the default `Output` directory of the package.
  /// - Parameter indentation: The indentation to use when rendering code CSS file.
  private func generateCSS(with indentation: Indentation) throws {
    let renderer = StyleSheetRenderer()
    let cssGenerator = Generator(content: renderer.render())
    try cssGenerator.write(file: "styles", with: "css", to: outputPath)
    let cssGenerator = FileGenerator(content: renderedContent)
  }
}
