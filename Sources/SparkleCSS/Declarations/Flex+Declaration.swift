extension Declaration {
  /// Creates a declaration to display the element as a flex container.
  /// - Returns: The declaration that sets the display property to `flex`.
  public static func flex() -> Declaration {
    .display(.flex)
  }

  /// Creates a declaration that sets the direction of the flex layout.
  /// - Parameter direction: The direction of the flex layout.
  /// - Returns: The declaration that sets the direction of the flex layout.
  public static func flex(_ direction: Flex.Direction) -> Declaration {
    Declaration(property: "flex-direction", value: direction)
  }

  /// Creates a declaration that sets the content justification of the flex layout.
  /// - Parameter justification: The justification of the content.
  /// - Returns: The declaration that sets the justification of the content.
  public static func justifyContent(_ justification: Flex.Content.Justification) -> Declaration {
    Declaration(property: "justify-content", value: justification)
  }

  /// Creates a declaration that sets the content alignment of the flex layout.
  /// - Parameter justification: The alignment of the content.
  /// - Returns: The declaration that sets the alignment of the content.
  public static func alignContent(_ alignment: Flex.Content.Alignment) -> Declaration {
    Declaration(property: "align-content", value: alignment)
  }

  /// Creates a declaration that sets the item alignment of the flex layout.
  /// - Parameter justification: The alignment of the items.
  /// - Returns: The declaration that sets the alignment of the items.
  public static func alignItems(_ alignment: Flex.Item.Alignment) -> Declaration {
    Declaration(property: "align-items", value: alignment)
  }
}
