import SparkleTools

extension StyleSheetRenderer {
  /// An object that renders a CSS rule.
  struct RuleRenderer {

    // MARK: - Stored Properties

    /// The indentation to apply to the rule.
    let indentation: Indentation

    // MARK: - Init

    /// Creates an instance of the renderer.
    /// - Parameter indentation: The indentation to apply to the document.
    init(indentation: Indentation) {
      self.indentation = indentation
    }

    // MARK: - Functions

    /// Renders the rule into a `String`.
    /// - Parameter rule: The rule to render into a `String`.
    /// - Returns: The `String` representation of the rule.
    @StringBuilder
    func render(_ rule: Rule) -> String {
      render(rule.selector)

      " "

      "{"

      indentation.allowsNewlines ? "\n" : " "

      DeclarationRenderer(indentation: indentation.indent()).render(rule.declarations)

      indentation.allowsNewlines ? "\n" : " "

      "}"
    }

    /// Renders the `Selector` into a `String`.
    /// - Parameter selector: The selector to render into a `String`.
    /// - Returns: The `String` representation of the selector.
    private func render(_ selector: Rule.Selector) -> String {
      switch selector {
        case let .class(name):
          return ".\(name.escapedForStyleSheet)"

        case let .identifier(name):
          return "#\(name.escapedForStyleSheet)"

        case let .element(name):
          return name

        case .universal:
          return "*"
      }
    }
  }
}
