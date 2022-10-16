extension Rule {
  /// Creates a rule that sets the gap between elements.
  /// - Parameter value: The value of the gap.
  /// - Returns: The rule for a class that sets the gap.
  public static func gap(_ value: Unit) -> Rule {
    Rule(
      .class("gap-\(value.render())"),
      declarations: .gap(value)
    )
  }
}
