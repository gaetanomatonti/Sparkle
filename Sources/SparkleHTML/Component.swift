import SparkleTools

/// A protocol defining requirements for a web component.
public protocol Component: Renderable {
  /// The body of the component.
  @ComponentBuilder var body: Component { get }
}

extension Component {
  public func render() -> String {
    let body = body as Renderable
    return body.render()
  }
}
