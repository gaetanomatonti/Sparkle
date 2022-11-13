import SparkleCSS

extension Component {
  /// Sets the minimum width of the component.
  /// - Parameter value: The value of the minimum width.
  /// - Returns: The component updated with the minimum width.
  public func minimumWidth<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.minimumWidth(value))
  }

  /// Sets the width of the component.
  /// - Parameter value: The value of the width.
  /// - Returns: The component updated with the width.
  public func width<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.width(value))
  }

  /// Sets the maximum width of the component.
  /// - Parameter value: The value of the maximum width.
  /// - Returns: The component updated with the maximum width.
  public func maximumWidth<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.maximumWidth(value))
  }

  /// Sets the minimum height of the component.
  /// - Parameter value: The value of the minimum height.
  /// - Returns: The component updated with the minimum height.
  public func minimumHeight<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.minimumHeight(value))
  }

  /// Sets the height of the component.
  /// - Parameter value: The value of the height.
  /// - Returns: The component updated with the height.
  public func height<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.height(value))
  }

  /// Sets the maximum height of the component.
  /// - Parameter value: The value of the maximum height.
  /// - Returns: The component updated with the maximum height.
  public func maximumHeight<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.maximumHeight(value))
  }
}
