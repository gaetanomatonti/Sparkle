/// A component that renders a `<section>` element.
public struct Section: Component {

  // MARK: - Stored Properties

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component and its content from the builder closure.
  /// - Parameter content: The closure that constructs the content.
  public init(@ComponentBuilder content: () -> Component) {
    self.content = content()
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "section") {
      content
    }
  }
}
