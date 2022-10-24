/// A protocol that describes requirements for an image that can be applied to the background of an element.
public protocol BackgroundImage: Value {
  /// The name of the class.
  var className: String { get }
}
