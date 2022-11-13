extension Declaration {
  /// Creates the declaration that sets the alignment of the text.
  /// - Parameter alignment: The alignment of the text.
  /// - Returns: The declaration that sets the alignment of the text.
  public static func textAlignment(_ alignment: Text.Alignment) -> Declaration {
    Declaration(property: "text-align", value: alignment)
  }

  /// Creates the declaration that sets the line decoration of the text.
  /// - Parameter decoration: The line decoration of the text.
  /// - Returns: The declaration that sets the line decoration of the text.
  public static func textDecoration(_ decoration: Text.Decoration) -> Declaration {
    Declaration(property: "text-decoration-line", value: decoration)
  }

  /// Creates the declaration that sets the style of the line decoration of the text.
  /// - Parameter style: The style of the line decoration of the text.
  /// - Returns: The declaration that sets the style of the line decoration of the text.
  public static func textDecorationStyle(_ style: Text.Decoration.Style) -> Declaration {
    Declaration(property: "text-decoration-style", value: style)
  }

  /// Creates the declaration that sets the thickness of the line decoration of the text.
  /// - Parameter value: The thickness of the line decoration of the text.
  /// - Returns: The declaration that sets the thickness of the line decoration of the text.
  public static func textDecorationThickness<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "text-decoration-thickness", value: value)
  }

  /// Creates the declaration that sets the transform of the text.
  /// - Parameter transform: The transform of the text.
  /// - Returns: The declaration that sets the transform of the text.
  public static func textTransform(_ transform: Text.Transform) -> Declaration {
    Declaration(property: "text-transform", value: transform)
  }

  /// Creates the declaration that sets the offset of the text underline.
  /// - Parameter value: The offset of the text underline.
  /// - Returns: The declaration that sets the offset of the text underline.
  public static func textUnderlineOffset<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "text-underline-offset", value: value)
  }
}
