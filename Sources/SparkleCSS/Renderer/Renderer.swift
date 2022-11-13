import Foundation
import SparkleTools

/// An object that renders a set of CSS rules into a file.
public final class StyleSheetRenderer {

  // MARK: - Stored Properties

  /// The indentation to apply to the document.
  let indentation: Indentation

  /// The set of `@import` statements.
  var imports: Set<Source>

  /// The font faces to apply to the stylesheet.
  var fontFaces: Set<Font.Face>

  /// The set of rules that should be rendered.
  var rules: Set<Rule>

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

  /// Inserts an import statement in the set of imports.
  /// - Parameter source: The import statement to add to the set of imports.
  public func `import`(_ source: Source) {
    imports.insert(source)
  }

  /// Inserts a font face in the stylesheet.
  /// - Parameter rule: The font face to add to the stylesheet.
  public func insert(_ fontFace: Font.Face) {
    fontFaces.insert(fontFace)
  }

  /// Inserts a rule in the set of rules to render.
  /// - Parameter rule: The rule to add to the set of rules.
  public func insert(_ rule: Rule) {
    rules.insert(rule)
  }

  /// Inserts a lit of rules in the set of rules to render.
  /// - Parameter rules: The list of rules to add to the set of rules.
  public func insert(_ rules: [Rule]) {
    self.rules.formUnion(rules)
  }

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

// MARK: - Environment

/// The key to access the `Renderer` instance in the environment.
struct RendererKey: EnvironmentKey {
  static var defaultValue = StyleSheetRenderer()
}

extension EnvironmentValues {
  /// The instance of the `Renderer` in the environment.
  public static var styleSheetRenderer: StyleSheetRenderer {
    get {
      self[RendererKey.self]
    }
    set {
      self[RendererKey.self] = newValue
    }
  }
}
