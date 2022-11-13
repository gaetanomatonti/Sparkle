extension Rule {
  /// Creates a rule that sets the gap between elements.
  /// - Parameter value: The value of the gap.
  /// - Returns: The rule for a class that sets the gap.
  public static func gap<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("gap-\(value.className)"),
      declarations: .gap(value)
    )
  }
}
