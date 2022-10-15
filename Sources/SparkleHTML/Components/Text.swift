public struct Text: Component {

  // MARK: - Stored Properties

  let content: Component

  // MARK: - Init

  public init(_ content: String) {
    self.content = RawText(content)
  }

  // MARK: - Body

  public var body: Component {
    content
  }
}
