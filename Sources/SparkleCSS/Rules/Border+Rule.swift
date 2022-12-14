extension Rule {
  /// Creates the rule that sets the border radius of the element.
  /// - Parameter value: The value of the border radius.
  /// - Returns: A `Rule` that sets the border radius.
  public static func borderRadius<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(
      .class("border-radius-\(value.className)"),
      declarations: .borderRadius(value)
    )
  }

  /// Creates the rule that applies a border to the element.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: A `Rule` that applies a border to the element.
  public static func border<V>(
    width: V,
    style: Border<V>.Style,
    color: Color
  ) -> Rule where V: MeasurementValue {
    let border = Border(width: width, style: style, color: color)
    return Rule(
      .class("border-\(border.className)"),
      declarations: .border(border)
    )
  }

  /// Creates the rule that applies a border to the top edge of the element.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: A `Rule` that applies a border to the element.
  public static func borderTop<V>(
    width: V,
    style: Border<V>.Style,
    color: Color
  ) -> Rule where V: MeasurementValue {
    let border = Border(width: width, style: style, color: color)
    return Rule(
      .class("border-top-\(border.className)"),
      declarations: .borderTop(border)
    )
  }

  /// Creates the rule that applies a border to the left edge of the element.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: A `Rule` that applies a border to the element.
  public static func borderLeft<V>(
    width: V,
    style: Border<V>.Style,
    color: Color
  ) -> Rule where V: MeasurementValue {
    let border = Border(width: width, style: style, color: color)
    return Rule(
      .class("border-left-\(border.className)"),
      declarations: .borderLeft(border)
    )
  }

  /// Creates the rule that applies a border to the right edge of the element.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: A `Rule` that applies a border to the element.
  public static func borderRight<V>(
    width: V,
    style: Border<V>.Style,
    color: Color
  ) -> Rule where V: MeasurementValue {
    let border = Border(width: width, style: style, color: color)
    return Rule(
      .class("border-right-\(border.className)"),
      declarations: .borderRight(border)
    )
  }

  /// Creates the rule that applies a border to the bottom edge of the element.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: A `Rule` that applies a border to the element.
  public static func borderBottom<V>(
    width: V,
    style: Border<V>.Style,
    color: Color
  ) -> Rule where V: MeasurementValue {
    let border = Border(width: width, style: style, color: color)
    return Rule(
      .class("border-bottom-\(border.className)"),
      declarations: .borderBottom(border)
    )
  }
}
