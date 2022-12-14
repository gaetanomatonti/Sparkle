import SparkleCSS

extension Component {
  /// Sets the border radius of the component.
  /// - Parameter value: The value of the border radius.
  /// - Returns: The component updated with the border radius.
  public func borderRadius<V>(_ value: V) -> Component where V: MeasurementValue {
    rule(.borderRadius(value))
  }

  /// Applies a border to the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func border<V>(
    width: V,
    style: Border<V>.Style = .defaultValue,
    color: Color
  ) -> Component where V: MeasurementValue {
    rule(.border(width: width, style: style, color: color))
  }

  /// Applies a border to the top edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderTop<V>(
    width: V,
    style: Border<V>.Style = .defaultValue,
    color: Color
  ) -> Component where V: MeasurementValue {
    rule(.borderTop(width: width, style: style, color: color))
  }

  /// Applies a border to the left edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderLeft<V>(
    width: V,
    style: Border<V>.Style = .defaultValue,
    color: Color
  ) -> Component where V: MeasurementValue {
    rule(.borderLeft(width: width, style: style, color: color))
  }

  /// Applies a border to the right edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderRight<V>(
    width: V,
    style: Border<V>.Style = .defaultValue,
    color: Color
  ) -> Component where V: MeasurementValue {
    rule(.borderRight(width: width, style: style, color: color))
  }

  /// Applies a border to the bottom edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderBottom<V>(
    width: V,
    style: Border<V>.Style = .defaultValue,
    color: Color
  ) -> Component where V: MeasurementValue {
    rule(.borderBottom(width: width, style: style, color: color))
  }
}

