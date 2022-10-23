/// The colors supported by CSS.
public enum NamedColor: String, Color {
  /// Gets the color from the `color` property of the element.
  case currentColor = "currentcolor"

  /// Inherits the color from its parent.
  case inherit

  /// A transparent color.
  case transparent

  case black

  case white

  public var className: String {
    render()
  }

  public func render() -> String {
    rawValue
  }
}
