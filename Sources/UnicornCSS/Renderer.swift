import Foundation
import UnicornTools

/// An object that renders a set of CSS rules into a file.
public final class Renderer {
  var rules: Set<Rule>

  public var renderedRules: String {
    rules
      .sorted { lhs, rhs in
        lhs.name < rhs.name
      }
      .map { rule in
        rule.render()
      }
      .joined(separator: "\n")
  }

  public init(rules: Set<Rule> = []) {
    self.rules = rules
  }

  public func insert(_ rule: Rule) {
    rules.insert(rule)
  }
}
