/// A component that renders a `<title>` element.
public struct Title: Component {

  // MARK: - Stored Properties

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component and its content from the builder closure.
  /// - Parameter content: The closure that constructs the content.
  public init(_ content: () -> Text) {
    self.content = content()
  }

  /// Creates the component with a `String` content.
  /// - Parameter content: The `String` to render inside the component.
  public init(_ content: String) {
    self.init {
      Text(content)
    }
  }

  /// Creates the component and its content from the builder closure.
  /// - Parameter content: The closure that constructs the content.
  public init(_ content: () -> String) {
    self.init {
      Text(content())
    }
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "title") {
      content
    }
  }
}
