/// A protocol defining requirements for an object that can be rendered into a `String`.
public protocol Renderable {
  /// Renders the object into a `String`.
  func render() -> String
}
