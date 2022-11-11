import SparkleCSS

extension Component {
  /// Applies a margin to the component.
  /// - Parameter value: The value of the margin.
  /// - Returns: The component updated with the newly generated margin class.
  public func margin(_ value: Unit) -> Component {
    rule(.margin(value))
  }

  /// Applies a margin to the component.
  /// - Parameters:
  ///   - edge: The edge on which to apply the margin.
  ///   - value: The value of the margin.
  /// - Returns: The component updated with the newly generated margin class.
  public func margin(_ edge: Edge.Set = .all, _ value: Unit) -> Component {
    rule(.margin(edge, value))
  }
}
