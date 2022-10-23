extension Rule {
  /// Creates the rule that sets the background color of the element.
  /// - Parameter color: The color to apply.
  /// - Returns: A `Rule` that sets the background color.
  public static func backgroundColor(_ color: Color) -> Rule {
    Rule(.class("bg-color-\(color.className)"), declarations: .backgroundColor(color))
  }

  /// Creates the rule that sets the style of the background.
  /// - Parameter style: The style to apply.
  /// - Returns: A `Rule` that sets the style of the element.
  public static func background(_ style: BackgroundStyle) -> Rule {
    Rule(.class("bg-\(style.className)"), declarations: .background(style))
  }
}
