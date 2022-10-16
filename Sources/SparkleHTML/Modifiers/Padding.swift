import SparkleCSS

extension Component {
  /// Applies a padding to the component.
  /// - Parameter value: The value of the padding.
  /// - Returns: The component updated with the newly generated padding class.
  public func padding(_ value: Unit) -> Component {
    rule(.padding(value))
  }

  /// Applies a padding to the component.
  /// - Parameters:
  ///   - edge: The edge on which to apply the padding.
  ///   - value: The value of the padding.
  /// - Returns: The component updated with the newly generated padding class.
  public func padding(_ edge: Edge, _ value: Unit) -> Component {
    rule(.padding(edge, value))
  }
}
