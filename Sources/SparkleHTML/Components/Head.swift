public struct Head: Component {
  let content: Component

  public init(@ComponentBuilder content: () -> Component) {
    self.content = content()
  }

  public var body: Component {
    Element(name: "head") {
      content
    }
  }
}
