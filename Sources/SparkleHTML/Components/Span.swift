/// A component that renders a `<span>` element.
public struct Span: AttributedComponent {

  // MARK: - Stored Properties

  var attributes: Set<Attribute>

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component with a `String` content.
  /// - Parameter content: The `String` to render inside the component.
  public init(_ content: String) {
    self.init {
      RawText(content)
    }
  }

  /// Creates the component and its content from the builder closure.
  /// - Parameters:
  ///   - attributes: The attributes to add to the underlying element.
  ///   - content: The closure that constructs the content.
  public init(_ attributes: Attribute..., @ComponentBuilder content: () -> Component) {
    self.attributes = Set(attributes)
    self.content = content()
  }

  /// Creates the component and its content from the builder closure.
  /// - Parameters:
  ///   - attributes: The attributes to add to the underlying element.
  ///   - content: The closure that constructs the content.
  init(_ attributes: Set<Attribute>, @ComponentBuilder content: () -> Component) {
    self.attributes = attributes
    self.content = content()
  }

  // MARK: - Body

  public var body: Component {
    Element(tag: Tag(name: "span", kind: .standard, attributes: attributes)) {
      content
    }
  }
}
