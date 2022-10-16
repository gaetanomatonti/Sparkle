/// A structure that computes components from a collection of items.
struct ForEach: Component {

  // MARK: - Stored Properties

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates a group of components from a collection of items.
  /// - Parameters:
  ///   - items: The items to render inside the group.
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
