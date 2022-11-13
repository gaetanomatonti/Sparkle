extension Declaration {
  /// Creates a declaration to set the margins of a component.
  /// - Parameter value: The value of the margin on all edges.
  /// - Returns: The declaration that sets the margins.
  public static func margin<V>(_ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "margin", value: value)
  }

  /// Creates a declaration to set the margins of a component.
  /// - Parameters:
  ///   - edge: The edge where the margin should be applied.
  ///   - value: The value of the margin to apply.
  /// - Returns: The declaration that sets the margins.
  public static func margin<V>(_ edge: Edge, _ value: V) -> Declaration where V: MeasurementValue {
    Declaration(property: "margin-\(edge.rawValue)", value: value)
  }
}
