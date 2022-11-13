extension Declaration {
  /// Creates the declaration that sets the gap between elements.
  ///  - Parameter value: The value of the gap.
  ///  - Returns: The declaration that sets the gap property.
  public static func gap<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "gap", value: value)
  }
}
