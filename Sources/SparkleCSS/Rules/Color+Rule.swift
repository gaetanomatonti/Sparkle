extension Rule {
  /// Creates the rule that sets the foreground color of the element.
  /// - Parameter color: The color to apply.
  /// - Returns: A `Rule` that sets the foreground color.
  public static func foregroundColor(_ color: Color) -> Rule {
    Rule(.class("color-\(color.className)"), declarations: .foregroundColor(color))
  }
}
