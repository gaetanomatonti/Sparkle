extension Rule {
  /// Creates a rule that sets the minimum width of a component.
  /// - Parameter value: The value of the minimum width.
  /// - Returns: The rule for a class that sets the minimum width.
  public static func minimumWidth(_ value: Unit) -> Rule {
    Rule(
      .class("min-width-\(value.render())"),
      declarations: .minimumWidth(value)
    )
  }

  /// Creates a rule that sets the width of a component.
  /// - Parameter value: The value of the width.
  /// - Returns: The rule for a class that sets the width.
  public static func width(_ value: Unit) -> Rule {
    Rule(
      .class("width-\(value.render())"),
      declarations: .width(value)
    )
  }

  /// Creates a rule that sets the maximum width of a component.
  /// - Parameter value: The value of the maximum width.
  /// - Returns: The rule for a class that sets the maximum width.
  public static func maximumWidth(_ value: Unit) -> Rule {
    Rule(
      .class("max-width-\(value.render())"),
      declarations: .maximumWidth(value)
    )
  }

  /// Creates a rule that sets the minimum height of a component.
  /// - Parameter value: The value of the minimum height.
  /// - Returns: The rule for a class that sets the minimum height.
  public static func minimumHeight(_ value: Unit) -> Rule {
    Rule(
      .class("min-height-\(value.render())"),
      declarations: .minimumHeight(value)
    )
  }

  /// Creates a rule that sets the height of a component.
  /// - Parameter value: The value of the height.
  /// - Returns: The rule for a class that sets the height.
  public static func height(_ value: Unit) -> Rule {
    Rule(
      .class("height-\(value.render())"),
      declarations: .width(value)
    )
  }

  /// Creates a rule that sets the maximum height of a component.
  /// - Parameter value: The value of the maximum height.
  /// - Returns: The rule for a class that sets the maximum height.
  public static func maximumHeight(_ value: Unit) -> Rule {
    Rule(
      .class("max-height-\(value.render())"),
      declarations: .maximumHeight(value)
    )
  }
}
