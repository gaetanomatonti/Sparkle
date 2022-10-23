import SparkleCSS

extension Component {
  /// Sets the color of the foreground.
  /// - Parameter color: The color to apply.
  /// - Returns: The component with the color.
  public func foregroundColor(_ color: Color) -> Component {
    rule(.foregroundColor(color))
  }

  /// Sets the color of the background.
  /// - Parameter color: The color to apply.
  /// - Returns: The component with the color.
  public func backgroundColor(_ color: Color) -> Component {
    rule(.backgroundColor(color))
  }
}
