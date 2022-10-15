import Foundation
import SparkleTools

/// An object that renders a set of CSS rules into a file.
public final class Renderer {

  // MARK: - Stored Properties

  /// The set of rules that should be rendered.
  var rules: Set<Rule>

  // MARK: - Init

  /// Creates a new instance of `Render` by specifying a set of rules to render.
  /// - Parameter rules: The set of rules that should be rendered.
  public init(rules: Set<Rule> = []) {
    self.rules = rules
  }

  // MARK: - Functions

  /// Inserts a rule in the set of rules to render.
  /// - Parameter rule: The rule to be added to the set of rules.
  public func insert(_ rule: Rule) {
    rules.insert(rule)
  }

  /// Renders the rules in `String` format, sorted alphabetically.
  public func render() -> String {
    rules
      .sorted { lhs, rhs in
        lhs.name < rhs.name
      }
      .map { rule in
        rule.render()
      }
      .joined(separator: "\n")
  }
}

// MARK: - Environment

/// The key to access the `Renderer` instance in the environment.
struct RendererKey: EnvironmentKey {
  static var defaultValue = Renderer()
}

extension EnvironmentValues {
  /// The instance of the `Renderer` in the environment.
  public static var styleSheetRenderer: Renderer {
    get {
      self[RendererKey.self]
    }
    set {
      self[RendererKey.self] = newValue
    }
  }
}
