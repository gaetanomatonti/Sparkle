extension Declaration {
  /// Creates the declaration that sets the font family.
  /// - Parameter families: The families of the font. CSS fallbacks to the next family in the list in case one of the fonts is missing.
  /// - Returns: The declaration that sets the font family.
  public static func fontFamily(_ families: Font.Family...) -> Declaration {
    Declaration(property: "font-family", value: Font.Families(families))
  }

  /// Creates the declaration that sets the font size.
  /// - Parameter value: The size of the font.
  /// - Returns: The declaration that sets the font size.
  public static func fontSize<V>(_ size: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "font-size", value: size)
  }

  /// Creates the declaration that sets the font stretch.
  /// - Parameter stretch: The stretch of the font.
  /// - Returns: The declaration that sets the font stretch.
  public static func fontStretch(_ stretch: Font.Stretch) -> Declaration {
    Declaration(property: "font-stretch", value: stretch)
  }

  /// Creates the declaration that sets the font style.
  /// - Parameter style: The style of the font.
  /// - Returns: The declaration that sets the font style.
  public static func fontStyle(_ style: Font.Style) -> Declaration {
    Declaration(property: "font-style", value: style)
  }

  /// Creates the declaration that sets the font weight.
  /// - Parameter weight: The weight of the font.
  /// - Returns: The declaration that sets the font weight.
  public static func fontWeight(_ weight: Font.Weight) -> Declaration {
    Declaration(property: "font-weight", value: weight)
  }

  /// Creates the declaration that sets the line height.
  /// - Parameter value: The value of the line height.
  /// - Returns: The declaration that sets the line height.
  public static func lineHeight<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "line-height", value: value)
  }
}
