extension Declaration {
  /// Creates the declaration that sets the foreground color of the element.
  /// - Parameter color: The color to apply.
  /// - Returns: A `Rule` that sets the foreground color.
  public static func foregroundColor(_ color: Color) -> Declaration {
    Declaration(property: "color", value: color)
  }
}
