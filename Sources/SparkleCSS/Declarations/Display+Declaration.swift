extension Declaration {
  /// Creates the declaration that sets the display property.
  /// - Parameter value: The value of the `display` property.
  /// - Returns: The declaration that sets the display property.
  public static func display(_ value: Display) -> Declaration {
    Declaration(property: "display", value: value)
  }
}
