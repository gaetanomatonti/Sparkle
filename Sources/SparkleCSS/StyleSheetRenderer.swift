import Foundation
import SparkleTools

/// An object that renders a set of CSS rules into a file.
public final class StyleSheetRenderer {

  // MARK: - Stored Properties

  /// The set of imports statements.
  var imports: Set<Import>

  /// The set of rules that should be rendered.
  var rules: Set<Rule>

  // MARK: - Init

  /// Creates a new instance of `Render` by specifying a set of rules to render.
  /// - Parameter rules: The set of rules that should be rendered.
  public init(imports: Set<Import> = [], rules: Set<Rule> = []) {
    self.imports = imports
    self.rules = rules
  }

  // MARK: - Functions

  /// Inserts an import statement in the set of imports.
  /// - Parameter statement: The import statement to be added to the set of imports.
  public func `import`(_ statement: Import) {
    imports.insert(statement)
  }

  /// Inserts a rule in the set of rules to render.
  /// - Parameter rule: The rule to be added to the set of rules.
  public func insert(_ rule: Rule) {
    rules.insert(rule)
  }

  /// Renders the rules in `String` format, sorted alphabetically.
  public func render() -> String {
    let imports = imports
      .sorted { lhs, rhs in
        lhs.render() < rhs.render()
      }
      .map { statement in
        statement.render()
      }
      .joined(separator: "\n")

    let rules = rules
      .sorted { lhs, rhs in
        lhs.selector.render() < rhs.selector.render()
      }
      .map { rule in
        rule.render()
      }
      .joined(separator: "\n")

    return imports + rules
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
