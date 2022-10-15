/// A component that renders the `<link>` element.
public struct Link: Component {

  // MARK: - Stored Properties

  /// The attributes of the element.
  let attributes: [Attribute]

  // MARK: - Init

  /// Creates the component by adding attributes to the underlying elements.
  /// - Parameter attributes: The attributes to add to the underlying element.
  public init(_ attributes: Attribute...) {
    self.attributes = attributes
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "link", attributes: attributes)
  }
}
