extension Declaration {
  /// Creates the declaration that sets the `box-sizing` property.
  /// - Parameter value: The value of the `display` property.
  /// - Returns: The declaration that sets the `box-sizing` property.
  public static func boxSizing(_ value: BoxSizing) -> Declaration {
    Declaration(property: "box-sizing", value: value)
  }
}
