import SparkleCSS

extension Component {
  /// Sets the minimum width of the component.
  /// - Parameter value: The value of the minimum width.
  /// - Returns: The component updated with the minimum width.
  public func minimumWidth(_ value: Unit) -> Component {
    rule(.minimumWidth(value))
  }

  /// Sets the width of the component.
  /// - Parameter value: The value of the width.
  /// - Returns: The component updated with the width.
  public func width(_ value: Unit) -> Component {
    rule(.width(value))
  }

  /// Sets the maximum width of the component.
  /// - Parameter value: The value of the maximum width.
  /// - Returns: The component updated with the maximum width.
  public func maximumWidth(_ value: Unit) -> Component {
    rule(.maximumWidth(value))
  }

  /// Sets the minimum height of the component.
  /// - Parameter value: The value of the minimum height.
  /// - Returns: The component updated with the minimum height.
  public func minimumHeight(_ value: Unit) -> Component {
    rule(.minimumHeight(value))
  }

  /// Sets the height of the component.
  /// - Parameter value: The value of the height.
  /// - Returns: The component updated with the height.
  public func height(_ value: Unit) -> Component {
    rule(.height(value))
  }

  /// Sets the maximum height of the component.
  /// - Parameter value: The value of the maximum height.
  /// - Returns: The component updated with the maximum height.
  public func maximumHeight(_ value: Unit) -> Component {
    rule(.maximumHeight(value))
  }
}
