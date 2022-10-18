/// A components that renders raw text.
struct RawText: Component {

  // MARK: - Stored Properties

  /// The text to render.
  let content: String

  // MARK: - Init

  /// Creates the component with a `String` content.
  /// - Parameter content: The raw `String` content to render.
  init(_ content: String) {
    self.content = content
  }

  // MARK: - Body

  var body: Component {
    EmptyComponent()
  }

  // MARK: - Functions

  func render() -> String {
    content
  }
}
