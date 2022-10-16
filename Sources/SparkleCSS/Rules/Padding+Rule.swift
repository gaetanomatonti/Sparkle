extension Rule {
  /// Creates a rule that sets the padding of a component.
  /// - Parameter value: The value of the padding on all edges.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding(_ value: Unit) -> Rule {
    Rule("padding-\(value.render())", declarations: .padding(value))
  }

  /// Creates a rule that sets the padding of a component.
  /// - Parameters:
  ///   - vertical: The value of the vertical padding.
  ///   - horizontal: The value of the horizontal padding.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding(vertical: Unit, horizontal: Unit) -> Rule {
    Rule(
      "padding-v-\(vertical.render())-h-\(horizontal.render())",
      declarations: .padding(vertical: vertical, horizontal: horizontal)
    )
  }

  /// Creates a rule that sets the padding of a component.
  /// - Parameters:
  ///   - top: The value of the top padding.
  ///   - right: The value of the right padding.
  ///   - bottom: The value of the bottom padding.
  ///   - left: The value of the left padding.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding(top: Unit, right: Unit, bottom: Unit, left: Unit) -> Rule {
    Rule(
      "padding-t-\(top.render())-r-\(right.render())-b-\(bottom.render())-l-\(left)",
      declarations: .padding(top: top, right: right, bottom: bottom, left: left)
    )
  }

  /// Creates a rule that sets the padding of a component.
  /// - Parameters:
  ///   - edge: The edge where the padding should be applied.
  ///   - value: The value of the padding to apply.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding(_ edge: Edge, _ value: Unit) -> Rule {
    Rule(
      "padding-\(edge.rawValue)-\(value.render())",
      declarations: .padding(edge, value)
    )
  }
}
