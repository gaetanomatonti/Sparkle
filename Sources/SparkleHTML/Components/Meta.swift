/// A component that renders a `<meta>` element.
public struct Meta: AttributedComponent {

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
    Element(tag: Tag(name: "meta", kind: .selfClosing, attributes: attributes))
  }
}
