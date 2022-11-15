import Foundation
import SparkleTools

/// An object that renders a set of CSS rules into a file.
public struct StyleSheetRenderer {

  // MARK: - Stored Properties

  /// The indentation to apply to the document.
  let indentation: Indentation

  /// The set of `@import` statements.
  let imports: Set<Source>

  /// The font faces to apply to the stylesheet.
  let fontFaces: Set<Font.Face>

  /// The set of rules that should be rendered.
  let rules: Set<Rule>

  // MARK: - Init

  /// Creates a new instance of `Render` by specifying a set of rules to render.
  /// - Parameters:
  ///   - indentation: The indentation to apply to the document.
  ///   - fontFaces: The font faces to apply to the stylesheet.
  ///   - rules: The set of rules that should be rendered.
  public init(
    indentation: Indentation = Indentation(),
    imports: Set<Source> = [],
    fontFaces: Set<Font.Face> = [],
    rules: Set<Rule> = []
  ) {
    self.indentation = indentation
    self.imports = imports
    self.fontFaces = fontFaces
    self.rules = rules
  }

  // MARK: - Functions

  /// Renders the rules in `String` format, sorted alphabetically.
  public func render() -> String {
    let imports = imports
      .map { source in
        ImportRenderer(indentation: indentation).render(source)
      }
      .sorted()
      .joined()

    let fontFaces = fontFaces
      .map { fontFace in
        FontFaceRenderer(indentation: indentation).render(fontFace)
      }
      .joined()

    let rules = rules
      .filter { rule in
        !rule.declarations.isEmpty
      }
      .sorted { lhs, rhs in
        lhs.selector < rhs.selector
      }
      .map { rule in
        RuleRenderer(indentation: indentation).render(rule)
      }
      .joined(separator: indentation.allowsNewlines ? "\n\n" : "")

    return [
      imports,
      fontFaces,
      rules
    ]
    .filter {
      !$0.isEmpty
    }
    .joined(separator: indentation.allowsNewlines ? "\n" : "")
  }
}
