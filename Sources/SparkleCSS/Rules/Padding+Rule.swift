extension Rule {
  /// Creates a rule that sets the padding of a component.
  /// - Parameter value: The value of the padding on all edges.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding(_ value: Unit) -> Rule {
    Rule(
      .class("padding-\(value.render())"),
      declarations: .padding(value)
    )
  }

  /// Creates a rule that sets the padding of a component.
  /// - Parameters:
  ///   - edge: The edge where the padding should be applied.
  ///   - value: The value of the padding to apply.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding(_ edge: Edge, _ value: Unit) -> Rule {
    Rule(
      .class("padding-\(edge.rawValue)-\(value.render())"),
      declarations: .padding(edge, value)
    )
  }
}
