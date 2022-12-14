import SparkleCSS

extension Component {
  /// Sets the value of the gap between the elements.
  /// - Parameter value: The value of the gap.
  /// - Returns: The component updated with the gap.
  public func gap<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.gap(value))
  }
}
