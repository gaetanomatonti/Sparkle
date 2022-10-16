extension Rule {
  /// Creates a rule that sets the margins of a component.
  /// - Parameter value: The value of the margin on all edges.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(_ value: Unit) -> Rule {
    Rule("margin-\(value.render())", declarations: .margin(value))
  }

  /// Creates a rule that sets the margins of a component.
  /// - Parameters:
  ///   - vertical: The value of the vertical margins.
  ///   - horizontal: The value of the horizontal margins.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(vertical: Unit, horizontal: Unit) -> Rule {
    Rule(
      "margin-v-\(vertical.render())-h-\(horizontal.render())",
      declarations: .margin(vertical: vertical, horizontal: horizontal)
    )
  }

  /// Creates a rule that sets the margins of a component.
  /// - Parameters:
  ///   - top: The value of the top margins.
  ///   - horizontal: The value of the horizontal margins.
  ///   - bottom: The value of the bottom margins.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(top: Unit, horizontal: Unit, bottom: Unit) -> Rule {
    Rule(
      "margin-t-\(top.render())-h-\(horizontal)-b-\(bottom)",
      declarations: .margin(top: top, horizontal: horizontal, bottom: bottom)
    )
  }

  /// Creates a rule that sets the margins of a component.
  /// - Parameters:
  ///   - top: The value of the top margins.
  ///   - right: The value of the right margins.
  ///   - bottom: The value of the bottom margins.
  ///   - left: The value of the left margins.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(top: Unit, right: Unit, bottom: Unit, left: Unit) -> Rule {
    Rule(
      "margin-t-\(top.render())-r-\(right.render())-b-\(bottom.render())-l-\(left)",
      declarations: .margin(top: top, right: right, bottom: bottom, left: left)
    )
  }

  /// Creates a rule that sets the margins of a component.
  /// - Parameters:
  ///   - edge: The edge where the margin should be applied.
  ///   - value: The value of the margin to apply.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(_ edge: Edge, _ value: Unit) -> Rule {
    Rule(
      "margin-\(edge.rawValue)-\(value.render())",
      declarations: .margin(edge, value)
    )
  }
}
