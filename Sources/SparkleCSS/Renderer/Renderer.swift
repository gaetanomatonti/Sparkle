import Foundation
import SparkleTools

/// An object that renders a set of CSS rules into a file.
public struct StyleSheetRenderer {

  // MARK: - Stored Properties

  /// The indentation to apply to the document.
  let indentation: Indentation

  /// The object that contains all the rules applied to the components.
  private let rulesContainer = EnvironmentValues.rulesContainer

  // MARK: - Init

  /// Creates a new instance of `Render` by specifying a set of rules to render.
  /// - Parameters:
  ///   - indentation: The indentation to apply to the document.
  public init(indentation: Indentation = Indentation()) {
    self.indentation = indentation
  }

  // MARK: - Functions

  /// Renders the rules in `String` format, sorted alphabetically.
  public func render() async -> String {
    let imports = await rulesContainer.imports
      .map { source in
        ImportRenderer(indentation: indentation).render(source)
      }
      .sorted()
      .joined()

    let fontFaces = await rulesContainer.fontFaces
      .map { fontFace in
        FontFaceRenderer(indentation: indentation).render(fontFace)
      }
      .joined()

    let rules = await rulesContainer.rules
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
