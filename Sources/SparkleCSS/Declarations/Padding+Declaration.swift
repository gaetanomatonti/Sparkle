extension Declaration {
  /// Creates a declaration to set the padding of a component.
  /// - Parameter value: The value of the padding on all edges.
  /// - Returns: The declaration that sets the padding.
  public static func padding(_ value: Unit) -> Declaration {
    Declaration(property: "padding", value: value)
  }

  /// Creates a declaration to set the padding of a component.
  /// - Parameters:
  ///   - vertical: The value of the vertical padding.
  ///   - horizontal: The value of the horizontal padding.
  /// - Returns: The declaration that sets the padding.
  public static func padding(vertical: Unit, horizontal: Unit) -> Declaration {
    Declaration(property: "padding", values: [vertical, horizontal])
  }

  /// Creates a declaration to set the padding of a component.
  /// - Parameters:
  ///   - top: The value of the top padding.
  ///   - horizontal: The value of the horizontal padding.
  ///   - bottom: The value of the bottom padding.
  /// - Returns: The declaration that sets the padding.
  public static func padding(top: Unit, horizontal: Unit, bottom: Unit) -> Declaration {
    Declaration(property: "padding", values: [top, horizontal, bottom])
  }

  /// Creates a declaration to set the padding of a component.
  /// - Parameters:
  ///   - top: The value of the top padding.
  ///   - right: The value of the right padding.
  ///   - bottom: The value of the bottom padding.
  ///   - left: The value of the left padding.
  /// - Returns: The declaration that sets the padding.
  public static func padding(top: Unit, right: Unit, bottom: Unit, left: Unit) -> Declaration {
    Declaration(property: "padding", values: [top, right, bottom, left])
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
