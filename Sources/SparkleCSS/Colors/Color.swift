/// A protocol that defines requirements for types representing a color.
public protocol Color: ForegroundStyle, BackgroundStyle {
  /// The name used to identify the color in the style class.
  var className: String { get }
}
