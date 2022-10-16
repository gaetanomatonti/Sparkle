/// A component that renders a `<menu>` container element.
public struct Menu: AttributedComponent {

  // MARK: - Stored Properties

  var attributes: Set<Attribute>
  
  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the list and its content from the builder closure.
  /// Components created in the builder closure are automatically wrapped in a `<li>` element.
  /// - Parameters:
  ///   - items: The items to render inside the unordered list.
  ///   - content: The closure that constructs the content.
  public init<I>(_ items: [I], @ComponentBuilder content: (I) -> Component) {
    self.attributes = []
    self.content = ForEach(items) { item in
      ListItem {
        content(item)
      }
    }
  }

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
    Element(name: "menu", attributes: attributes) {
      content
    }
  }
}
