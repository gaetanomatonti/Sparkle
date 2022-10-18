/// A component that renders a `<script>` element.
public struct Script: AttributedComponent {

  // MARK: - Stored Properties

  var attributes: Set<Attribute>

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates an empty component.
  public init(_ attributes: Attribute...) {
    self.attributes = Set(attributes)
    self.content = RawText("")
  }

  /// Creates the component and its content from the builder closure.
  /// - Parameter content: The closure that constructs the content.
  public init(_ attributes: Attribute..., content: () -> String) {
    self.attributes = Set(attributes)
    self.content = RawText(content())
  }

  // MARK: - Body

  public var body: Component {
    Element(tag: Tag(name: "script", kind: .standard, attributes: attributes)) {
      content
    }
  }
}
