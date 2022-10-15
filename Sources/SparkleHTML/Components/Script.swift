/// A component that renders a `<script>` element.
public struct Script: Component {

  // MARK: - Stored Properties

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component with a `String` content.
  /// - Parameter content: The `String` to render inside the component.
  public init(_ content: String) {
    self.content = Text(content)
  }

  /// Creates the component and its content from the builder closure.
  /// - Parameter content: The closure that constructs the content.
  public init(_ content: () -> String) {
    self.content = Text(content())
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "script") {
      content
    }
  }
}
