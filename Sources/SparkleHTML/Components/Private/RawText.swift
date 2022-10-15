/// A components that renders raw text.
struct RawText: Component {

  // MARK: - Stored Properties

  /// The text to render.
  let content: String

  // MARK: - Init

  init(_ content: String) {
    self.content = content
  }

  // MARK: - Body

  var body: Component {
    fatalError()
  }

  // MARK: - Functions

  func render() -> String {
    content
  }
}
