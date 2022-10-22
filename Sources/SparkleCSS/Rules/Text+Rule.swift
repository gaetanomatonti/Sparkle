extension Rule {
  /// Creates the rule that sets the alignment of the text.
  /// - Parameter alignment: The alignment of the text.
  /// - Returns: The rule that sets the alignment of the text.
  public static func textAlignment(_ alignment: Text.Alignment) -> Rule {
    Rule(
      .class("text-\(alignment.render())"),
      declarations: .textAlignment(alignment)
    )
  }

  /// Creates the rule that sets the line decoration of the text.
  /// - Parameter decoration: The line decoration of the text.
  /// - Returns: The rule that sets the line decoration of the text.
  public static func textDecoration(_ decoration: Text.Decoration) -> Rule {
    Rule(
      .class("decoration-\(decoration.render())"),
      declarations: .textDecoration(decoration)
    )
  }

  /// Creates the rule that sets the style of the line decoration of the text.
  /// - Parameter style: The style of the line decoration of the text.
  /// - Returns: The rule that sets the style of the line decoration of the text.
  public static func textDecorationStyle(_ style: Text.Decoration.Style) -> Rule {
    Rule(
      .class("decoration-style-\(style.render())"),
      declarations: .textDecorationStyle(style)
    )
  }

  /// Creates the rule that sets the thickness of the line decoration of the text.
  /// - Parameter value: The thickness of the line decoration of the text.
  /// - Returns: The rule that sets the thickness of the line decoration of the text.
  public static func textDecorationThickness(_ value: Unit) -> Rule {
    Rule(
      .class("decoration-\(value)"),
      declarations: .textDecorationThickness(value)
    )
  }

  /// Creates the rule that sets the transform of the text.
  /// - Parameter transform: The transform of the text.
  /// - Returns: The rule that sets the transform of the text.
  public static func textTransform(_ transform: Text.Transform) -> Rule {
    Rule(
      .class(transform.className),
      declarations: .textTransform(transform)
    )
  }

  /// Creates the rule that sets the offset of the text underline.
  /// - Parameter value: The offset of the text underline.
  /// - Returns: The rule that sets the offset of the text underline.
  public static func textUnderlineOffset(_ value: Unit) -> Rule {
    Rule(
      .class("underline-offset-\(value.render())"),
      declarations: .textUnderlineOffset(value)
    )
  }
}
