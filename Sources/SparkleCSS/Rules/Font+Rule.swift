extension Rule {
  /// Creates a rule that sets the font size.
  /// - Parameter value: The size of the font.
  /// - Returns: The rule that sets the font size.
  public static func fontSize<V>(_ size: V) -> Rule where V: MeasurementValue {
    Rule(.class("text-size-\(size.className)"), declarations: .fontSize(size))
  }

  /// Creates a rule that sets the font stretch.
  /// - Parameter stretch: The stretch of the font.
  /// - Returns: The rule that sets the font stretch.
  public static func fontStretch(_ stretch: Font.Stretch) -> Rule {
    Rule(.class("text-stretch-\(stretch.className)"), declarations: .fontStretch(stretch))
  }

  /// Creates a rule that sets the font style.
  /// - Parameter style: The style of the font.
  /// - Returns: The rule that sets the font style.
  public static func fontStyle(_ style: Font.Style) -> Rule {
    Rule(.class("text-style-\(style.className)"), declarations: .fontStyle(style))
  }

  /// Creates a rule that sets the font weight.
  /// - Parameter weight: The weight of the font.
  /// - Returns: The rule that sets the font weight.
  public static func fontWeight(_ weight: Font.Weight) -> Rule {
    Rule(.class("text-weight-\(weight.className)"), declarations: .fontWeight(weight))
  }

  /// Creates a rule that sets the line height.
  /// - Parameter value: The value of the line height.
  /// - Returns: The rule that sets the line height.
  public static func lineHeight<V>(_ value: V) -> Rule where V: MeasurementValue {
    Rule(.class("line-height-\(value.className)"), declarations: .lineHeight(value))
  }
}
