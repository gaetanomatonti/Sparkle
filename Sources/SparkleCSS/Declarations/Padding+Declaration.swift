extension Declaration {
  /// Creates a declaration to set the padding of a component.
  /// - Parameter value: The value of the padding on all edges.
  /// - Returns: The declaration that sets the padding.
  public static func padding(_ value: Unit) -> Declaration {
    Declaration(property: "padding", value: value)
  }

  /// Creates a declaration to set the padding of a component.
  /// - Parameters:
  ///   - edge: The edge where the padding should be applied.
  ///   - value: The value of the padding to apply.
  /// - Returns: The declaration that sets the padding.
  public static func padding(_ edge: Edge, _ value: Unit) -> Declaration {
    Declaration(property: "padding-\(edge.rawValue)", value: value)
  }
}
