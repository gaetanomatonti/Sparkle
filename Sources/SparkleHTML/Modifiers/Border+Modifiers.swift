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

  /// Applies a border to the top edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderTop(
    width: Border.Width = .defaultValue,
    style: Border.Style = .defaultValue,
    color: Color
  ) -> Component {
    rule(.borderTop(width: width, style: style, color: color))
  }

  /// Applies a border to the left edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderLeft(
    width: Border.Width = .defaultValue,
    style: Border.Style = .defaultValue,
    color: Color
  ) -> Component {
    rule(.borderLeft(width: width, style: style, color: color))
  }

  /// Applies a border to the right edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderRight(
    width: Border.Width = .defaultValue,
    style: Border.Style = .defaultValue,
    color: Color
  ) -> Component {
    rule(.borderRight(width: width, style: style, color: color))
  }

  /// Applies a border to the bottom edge of the component.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: The component updated with the border.
  public func borderBottom(
    width: Border.Width = .defaultValue,
    style: Border.Style = .defaultValue,
    color: Color
  ) -> Component {
    rule(.borderBottom(width: width, style: style, color: color))
  }
}

