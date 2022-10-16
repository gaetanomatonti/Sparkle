extension Declaration {
  /// Creates a declaration to set the minimum width of a component.
  /// - Parameter value: The value of the minimum width.
  /// - Returns: The declaration that sets the minimum width.
  public static func minimumWidth(_ value: Unit) -> Declaration {
    Declaration(property: "min-width", value: value)
  }

  /// Creates a declaration to set the width of a component.
  /// - Parameter value: The value of the width.
  /// - Returns: The declaration that sets the width.
  public static func width(_ value: Unit) -> Declaration {
    Declaration(property: "width", value: value)
  }

  /// Creates a declaration to set the maximum width of a component.
  /// - Parameter value: The value of the maximum width.
  /// - Returns: The declaration that sets the maximum width.
  public static func maximumWidth(_ value: Unit) -> Declaration {
    Declaration(property: "max-width", value: value)
  }

  /// Creates a declaration to set the minimum height of a component.
  /// - Parameter value: The value of the minimum height.
  /// - Returns: The declaration that sets the minimum height.
  public static func minimumHeight(_ value: Unit) -> Declaration {
    Declaration(property: "min-height", value: value)
  }

  /// Creates a declaration to set the height of a component.
  /// - Parameter value: The value of the height.
  /// - Returns: The declaration that sets the height.
  public static func height(_ value: Unit) -> Declaration {
    Declaration(property: "height", value: value)
  }

  /// Creates a declaration to set the maximum height of a component.
  /// - Parameter value: The value of the maximum height.
  /// - Returns: The declaration that sets the maximum height.
  public static func maximumHeight(_ value: Unit) -> Declaration {
    Declaration(property: "max-height", value: value)
  }
}
