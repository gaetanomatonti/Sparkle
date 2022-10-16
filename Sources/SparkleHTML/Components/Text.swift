/// A component that renders raw text.
public struct Text: Component {

  // MARK: - Stored Properties

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component with a `String` content.
  /// - Parameter content: The `String` to render inside the component.
  public init(_ content: String) {
    self.content = RawText(content)
  }

  // MARK: - Body

  public var body: Component {
    content
  }
}