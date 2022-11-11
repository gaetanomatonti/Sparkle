import SparkleCSS

extension Component {
  /// Sets the border radius of the component.
  /// - Parameter value: The value of the border radius.
  /// - Returns: The component updated with the border radius.
  public func borderRadius(_ value: Unit) -> Component {
    rule(.borderRadius(value))
  }

  /// Applies a border to the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func border(
    width: Border.Width = .defaultValue,
    style: Border.Style = .defaultValue,
    color: Color
  ) -> Component {
    rule(.border(width: width, style: style, color: color))
  }
}

