extension Declaration {
  /// Creates the declaration that sets the background style of the element.
  /// - Parameter style: The style to apply to the background.
  /// - Returns: The `Declaration` that sets the style of the background.
  public static func background(_ style: BackgroundStyle) -> Declaration {
    Declaration(property: "background", value: style)
  }

  /// Creates the declaration that sets the background clip of the element.
  /// - Parameter clip: The clip method to apply to the background.
  /// - Returns: The `Declaration` that sets the clipping of the background.
  public static func backgroundClip(_ clip: BackgroundClip) -> Declaration {
    Declaration(property: "background-clip", value: clip)
  }

  /// Creates the declaration that sets the background color of the element.
  /// - Parameter color: The color to apply.
  /// - Returns: The `Declaration` that sets the background color.
  public static func backgroundColor(_ color: Color) -> Declaration {
    Declaration(property: "background-color", value: color)
  }
}
