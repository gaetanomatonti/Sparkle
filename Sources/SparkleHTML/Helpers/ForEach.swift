/// A structure that computes components from a collection of items.
struct ForEach: Component {

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
      content(item)
    }

    self.content = Group(components: components)
  }

  // MARK: - Body

  var body: Component {
    content
  }
}
