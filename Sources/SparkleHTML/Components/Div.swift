/// A component that renders a `<div>` container element.
public struct Div: AttributedComponent {

  // MARK: - Stored Properties

  var attributes: Set<Attribute>

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component and its content from the builder closure.
  /// - Parameters:
  ///   - attributes: The attributes to add to the underlying element.
  ///   - content: The closure that constructs the content.
  public init(_ attributes: Attribute..., @ComponentBuilder content: () -> Component) {
    self.attributes = Set(attributes)
    self.content = content()
  }

  // MARK: - Body

  public var body: Component {
    Element(tag: Tag(name: "div", kind: .standard, attributes: attributes)) {
      content
    }
  }
}
