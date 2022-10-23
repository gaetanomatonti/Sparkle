extension Rule {
  /// Creates a rule that sets the margins of a component.
  /// - Parameter value: The value of the margin on all edges.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(_ value: Unit) -> Rule {
    Rule(
      .class("margin-\(value.render())"),
      declarations: .margin(value)
    )
  }

  /// Creates a rule that sets the margins of a component.
  /// - Parameters:
  ///   - edge: The edge where the margin should be applied.
  ///   - value: The value of the margin to apply.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(_ edge: Edge, _ value: Unit) -> Rule {
    Rule(
      .class("margin-\(edge.rawValue)-\(value.render())"),
      declarations: .margin(edge, value)
    )
  }
}
