public struct TextValue: Value {
  let content: String

  public init(_ content: String) {
    self.content = content
  }

  public func render() -> String {
    content
  }
}
