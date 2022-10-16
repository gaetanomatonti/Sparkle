public extension Declaration {
  /// Creates the declaration that sets the gap between elements.
  ///  - Parameter value: The value of the gap.
  ///  - Returns: The declaration that sets the gap property.
  static func gap(_ value: Unit) -> Declaration {
    Declaration(property: "gap", value: value)
  }
}
