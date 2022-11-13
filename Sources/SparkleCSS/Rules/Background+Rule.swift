extension Rule {
  /// Creates the rule that sets the background color of the element.
  /// - Parameter color: The color to apply.
  /// - Returns: A `Rule` that sets the background color.
  public static func backgroundColor(_ color: Color) -> Rule {
    Rule(.class("bg-color-\(color.className)"), declarations: .backgroundColor(color))
  }

  /// Creates the rule that sets the background image.
  /// - Parameter image: The background image to apply.
  /// - Returns: A `Rule` that sets the background image.
  public static func backgroundImage(_ image: BackgroundImage) -> Rule {
    Rule(.class("bg-image-\(image.className)"), declarations: .backgroundImage(image))
  }
}
