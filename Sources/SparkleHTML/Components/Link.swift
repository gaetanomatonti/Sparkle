/// A component that renders a `<link>` element.
public struct Link: AttributedComponent {

  // MARK: - Stored Properties

  var attributes: Set<Attribute>

  // MARK: - Init

  /// Creates the component by adding attributes to the underlying elements.
  /// - Parameter attributes: The attributes to add to the underlying element.
  public init(_ attributes: Attribute...) {
    self.attributes = Set(attributes)
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "link", attributes: attributes)
  }
}
