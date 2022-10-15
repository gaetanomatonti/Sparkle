/// A component that displays a `<p>` element.
public struct Paragraph: Component {

  // MARK: - Stored Properties

  /// The content of the component.
  let content: Component

  // MARK: - Init

  public init(_ content: String) {
    self.content = Text(content)
  }

  public init(@ComponentBuilder content: () -> Component) {
    self.content = content()
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "p") {
      content
    }
  }
}
