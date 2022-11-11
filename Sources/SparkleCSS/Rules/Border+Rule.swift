extension Rule {
  /// Creates the rule that sets the border radius of the element.
  /// - Parameter value: The value of the border radius.
  /// - Returns: A `Rule` that sets the border radius.
  public static func borderRadius(_ value: Unit) -> Rule {
    Rule(
      .class("border-radius-\(value.render())"),
      declarations: .borderRadius(value)
    )
  }

  /// Creates the rule that applies a border to the element.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: A `Rule` that applies a border to the element.
  public static func border(
    width: Border.Width,
    style: Border.Style,
    color: Color
  ) -> Rule {
    let border = Border(width: width, style: style, color: color)
    return Rule(
      .class(border.className),
      declarations: .border(border)
    )
  }
}
