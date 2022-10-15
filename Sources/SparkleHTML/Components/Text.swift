/// A component that renders raw text.
/// Applying attributes and style modifiers to this component automatically wraps its content into a `<span>` element.
public struct Text: AttributedComponent {

  // MARK: - Stored Properties

  var attributes: Set<Attribute>

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component with a `String` content.
  /// - Parameter content: The `String` to render inside the component.
  public init(_ content: String) {
    self.attributes = []
    self.content = RawText(content)
  }

  /// Creates the component and its content from the builder closure.
  /// - Parameters:
  ///   - attributes: The attributes to add to the underlying element.
  ///   - content: The closure that constructs the content.
  public init(_ attributes: Attribute..., content: () -> String) {
    self.attributes = Set(attributes)
    self.content = RawText(content())
  }

  // MARK: - Body

  public var body: Component {
    if attributes.isEmpty {
      content
    } else {
      Span(attributes) {
        content
      }
    }
  }
}
