extension Declaration {
  /// Creates the declaration that sets the border radius of the element.
  /// - Parameter value: The value of the border radius.
  /// - Returns: A `Declaration` that sets the border radius.
  public static func borderRadius(_ value: Unit) -> Declaration {
    Declaration(property: "border-radius", value: value)
  }

  /// Creates the declaration that applies a border to the element.
  /// - Parameter border: The `Border` to apply to the element.
  /// - Returns: A `Declaration` that applies a border to the element.
  public static func border(_ border: Border) -> Declaration {
    Declaration(property: "border", value: border)
  }

  /// Creates the declaration that sets the border width of the element.
  /// - Parameter width: The width of the border.
  /// - Returns: A `Declaration` that sets the border width of the element.
  public static func borderWidth(_ width: Border.Width) -> Declaration {
    Declaration(property: "border-width", value: width)
  }

  /// Creates the declaration that sets the border width of the element.
  /// - Parameter width: The width of the border.
  /// - Returns: A `Declaration` that sets the border width of the element.
  public static func borderWidth(_ width: Unit) -> Declaration {
    Declaration(property: "border-width", value: width)
  }

  /// Creates the declaration that sets the border style of the element.
  /// - Parameter style: The style of the border.
  /// - Returns: A `Declaration` that sets the border style of the element.
  public static func borderStyle(_ style: Border.Style) -> Declaration {
    Declaration(property: "border-style", value: style)
  }

  /// Creates the declaration that sets the border color of the element.
  /// - Parameter color: The color of the border.
  /// - Returns: A `Declaration` that sets the border color of the element.
  public static func borderColor(_ color: Color) -> Declaration {
    Declaration(property: "border-color", value: color)
  }
}
