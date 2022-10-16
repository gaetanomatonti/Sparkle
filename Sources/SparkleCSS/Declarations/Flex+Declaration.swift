public extension Declaration {
  /// Creates a declaration to display the element as a flex container.
  /// - Returns: The declaration that sets the display property to `flex`.
  static func flex() -> Declaration {
    .display(.flex)
  }

  /// Creates a declaration that sets the direction of the flex layout.
  /// - Parameter direction: The direction of the flex layout.
  /// - Returns: The declaration that sets the direction of the flex layout.
  static func flex(_ direction: Flex.Direction) -> Declaration {
    Declaration(property: "flex-direction", value: direction)
  }
}
