import SparkleTools

/// A protocol defining requirements for a web component.
public protocol Component {
  /// The body of the component.
  @ComponentBuilder var body: Component { get }
}
