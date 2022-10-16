import SparkleCSS
import SparkleTools

extension Component {
  /// Applies the specified CSS rule to the HTML component and registers the rule for rendering.
  /// - Parameter rule: The rule to apply to the component.
  /// - Returns: The updated comopnent.
  public func rule(_ rule: Rule) -> Component {
    EnvironmentValues.styleSheetRenderer.insert(rule)

    switch rule.selector {
      case let .class(name):
        return self.class(name)

      case let .identifier(name):
        return self.identifier(name)

      case .element, .universal:
        return self
    }
  }
}
