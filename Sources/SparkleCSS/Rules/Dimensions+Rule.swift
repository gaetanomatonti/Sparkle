extension Rule {
  /// Creates a rule that sets the minimum width of a component.
  /// - Parameter value: The value of the minimum width.
  /// - Returns: The rule for a class that sets the minimum width.
  public static func minimumWidth<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("min-width-\(value.className)"),
      declarations: .minimumWidth(value)
    )
  }

  /// Creates a rule that sets the width of a component.
  /// - Parameter value: The value of the width.
  /// - Returns: The rule for a class that sets the width.
  public static func width<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("width-\(value.className)"),
      declarations: .width(value)
    )
  }

  /// Creates a rule that sets the maximum width of a component.
  /// - Parameter value: The value of the maximum width.
  /// - Returns: The rule for a class that sets the maximum width.
  public static func maximumWidth<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("max-width-\(value.className)"),
      declarations: .maximumWidth(value)
    )
  }

  /// Creates a rule that sets the minimum height of a component.
  /// - Parameter value: The value of the minimum height.
  /// - Returns: The rule for a class that sets the minimum height.
  public static func minimumHeight<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("min-height-\(value.className)"),
      declarations: .minimumHeight(value)
    )
  }

  /// Creates a rule that sets the height of a component.
  /// - Parameter value: The value of the height.
  /// - Returns: The rule for a class that sets the height.
  public static func height<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("height-\(value.className)"),
      declarations: .width(value)
    )
  }

  /// Creates a rule that sets the maximum height of a component.
  /// - Parameter value: The value of the maximum height.
  /// - Returns: The rule for a class that sets the maximum height.
  public static func maximumHeight<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("max-height-\(value.className)"),
      declarations: .maximumHeight(value)
    )
  }
}
