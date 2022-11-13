extension Declaration {
  /// Creates a declaration to set the minimum width of a component.
  /// - Parameter value: The value of the minimum width.
  /// - Returns: The declaration that sets the minimum width.
  public static func minimumWidth<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "min-width", value: value)
  }

  /// Creates a declaration to set the width of a component.
  /// - Parameter value: The value of the width.
  /// - Returns: The declaration that sets the width.
  public static func width<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "width", value: value)
  }

  /// Creates a declaration to set the maximum width of a component.
  /// - Parameter value: The value of the maximum width.
  /// - Returns: The declaration that sets the maximum width.
  public static func maximumWidth<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "max-width", value: value)
  }

  /// Creates a declaration to set the minimum height of a component.
  /// - Parameter value: The value of the minimum height.
  /// - Returns: The declaration that sets the minimum height.
  public static func minimumHeight<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "min-height", value: value)
  }

  /// Creates a declaration to set the height of a component.
  /// - Parameter value: The value of the height.
  /// - Returns: The declaration that sets the height.
  public static func height<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "height", value: value)
  }

  /// Creates a declaration to set the maximum height of a component.
  /// - Parameter value: The value of the maximum height.
  /// - Returns: The declaration that sets the maximum height.
  public static func maximumHeight<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "max-height", value: value)
  }
}
