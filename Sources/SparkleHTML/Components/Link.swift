public struct Link: Component {
  let attributes: [Attribute]

  public init(_ attributes: [Attribute] = []) {
    self.attributes = attributes
  }

  public var body: Component {
    Element(name: "link", attributes: attributes)
  }
}
