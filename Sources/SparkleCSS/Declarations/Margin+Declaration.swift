public extension Declaration {
  /// Creates a declaration to set the margins of a component.
  /// - Parameter value: The value of the margin on all edges.
  /// - Returns: The declaration that sets the margins.
  static func margin(_ value: Unit) -> Declaration {
    Declaration(property: "margin", value: value)
  }

  /// Creates a declaration to set the margins of a component.
  /// - Parameters:
  ///   - vertical: The value of the vertical margins.
  ///   - horizontal: The value of the horizontal margins.
  /// - Returns: The declaration that sets the margins.
  static func margin(vertical: Unit, horizontal: Unit) -> Declaration {
    Declaration(property: "margin", values: [vertical, horizontal])
  }

  /// Creates a declaration to set the margins of a component.
  /// - Parameters:
  ///   - top: The value of the top margin.
  ///   - horizontal: The value of the horizontal margins.
  ///   - bottom: The value of the bottom margin.
  /// - Returns: The declaration that sets the margins.
  static func margin(top: Unit, horizontal: Unit, bottom: Unit) -> Declaration {
    Declaration(property: "margin", values: [top, horizontal, bottom])
  }

  /// Creates a declaration to set the margins of a component.
  /// - Parameters:
  ///   - top: The value of the top margin.
  ///   - right: The value of the right margin.
  ///   - bottom: The value of the bottom margin.
  ///   - left: The value of the left margin.
  /// - Returns: The declaration that sets the margins.
  static func margin(top: Unit, right: Unit, bottom: Unit, left: Unit) -> Declaration {
    Declaration(property: "margin", values: [top, right, bottom, left])
  }

  /// Creates a declaration to set the margins of a component.
  /// - Parameters:
  ///   - edge: The edge where the margin should be applied.
  ///   - value: The value of the margin to apply.
  /// - Returns: The declaration that sets the margins.
  static func margin(_ edge: Edge, _ value: Unit) -> Declaration {
    Declaration(property: "margin-\(edge.rawValue)", value: value)
  }
}
