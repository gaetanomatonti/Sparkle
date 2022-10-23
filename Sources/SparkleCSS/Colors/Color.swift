/// A protocol that defines requirements for types representing a color.
public protocol Color: Value {
  /// The name used to identify the color in the style class.
  var className: String { get }
}
