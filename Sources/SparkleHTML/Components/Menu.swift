/// A component that renders a `<menu>` container element.
public struct Menu: Component {

  // MARK: - Stored Properties

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the list and its content from the builder closure.
  /// Components created in the builder closure are automatically wrapped in a `<li>` element.
  /// - Parameters:
  ///   - items: The items to render inside the unordered list.
  ///   - content: The closure that constructs the content.
  public init<I>(_ items: [I], @ComponentBuilder content: (I) -> Component) {
    let components = items.map { item in
      ListItem {
        content(item)
      }
    }

    self.content = Group(components: components)
  }

  /// Creates the component and its content from the builder closure – does not wrap the elements in a `<li>` element.
  /// - Parameter content: The closure that constructs the content.
  public init(@ComponentBuilder content: () -> Component) {
    self.content = content()
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "menu") {
      content
    }
  }
}
