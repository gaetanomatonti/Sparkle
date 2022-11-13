extension Declaration {
  /// Creates the declaration that sets the border radius of the element.
  /// - Parameter value: The value of the border radius.
  /// - Returns: A `Declaration` that sets the border radius.
  public static func borderRadius<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "border-radius", value: value)
  }

  /// Creates the declaration that applies a border to the element.
  /// - Parameter border: The `Border` to apply to the element.
  /// - Returns: A `Declaration` that applies a border to the element.
  public static func border<V>(_ border: Border<V>) -> Declaration where V: MeasurementValue {
    Declaration(property: "border", value: border)
  }

  /// Creates the declaration that applies a border to the top edge of the element.
  /// - Parameter border: The `Border` to apply to the element.
  /// - Returns: A `Declaration` that applies a border to the element.
  public static func borderTop<V>(_ border: Border<V>) -> Declaration where V: MeasurementValue {
    Declaration(property: "border-top", value: border)
  }

  /// Creates the declaration that applies a border to the left edge of the element.
  /// - Parameter border: The `Border` to apply to the element.
  /// - Returns: A `Declaration` that applies a border to the element.
  public static func borderLeft<V>(_ border: Border<V>) -> Declaration where V: MeasurementValue {
    Declaration(property: "border-left", value: border)
  }

  /// Creates the declaration that applies a border to the right edge of the element.
  /// - Parameter border: The `Border` to apply to the element.
  /// - Returns: A `Declaration` that applies a border to the element.
  public static func borderRight<V>(_ border: Border<V>) -> Declaration where V: MeasurementValue {
    Declaration(property: "border-right", value: border)
  }

  /// Creates the declaration that applies a border to the bottom edge of the element.
  /// - Parameter border: The `Border` to apply to the element.
  /// - Returns: A `Declaration` that applies a border to the element.
  public static func borderBottom<V>(_ border: Border<V>) -> Declaration where V: MeasurementValue {
    Declaration(property: "border-bottom", value: border)
  }

  /// Creates the declaration that sets the border width of the element.
  /// - Parameter width: The width of the border.
  /// - Returns: A `Declaration` that sets the border width of the element.
  public static func borderWidth<V>(_ width: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "border-width", value: width)
  }

  /// Creates the declaration that sets the border style of the element.
  /// - Parameter style: The style of the border.
  /// - Returns: A `Declaration` that sets the border style of the element.
  public static func borderStyle<V>(_ style: Border<V>.Style) -> Declaration where V: MeasurementValue {
    Declaration(property: "border-style", value: style)
  }

  /// Creates the declaration that sets the border color of the element.
  /// - Parameter color: The color of the border.
  /// - Returns: A `Declaration` that sets the border color of the element.
  public static func borderColor(_ color: Color) -> Declaration {
    Declaration(property: "border-color", value: color)
  }
}
