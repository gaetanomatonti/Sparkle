import SparkleTools

/// A type representing an HTML element.
public struct Element {

  // MARK: - Stored Properties

  /// The tag that wraps the element.
  let tag: Tag

  /// The content of the element, placed between the opening and closing tags.
  let content: Component?

  // MARK: - Init

  /// Creates an HTML element.
  /// - Parameters:
  ///   - name: The name of the element.
  ///   - attributes: The attributes to add to the element.
  ///   - content: The content wrapped inside the element, if needed. Defaults to `nil`.
  init(tag: Tag, content: Component? = nil) {
    self.tag = tag
    self.content = content
  }

  /// Creates an HTML element.
  /// - Parameters:
  ///   - name: The name of the element.
  ///   - attributes: The attributes to add to the element.
  ///   - content: The closure that constructs the content wrapped inside the element.
  init(tag: Tag, @ComponentBuilder content: () -> Component) {
    self.tag = tag
    self.content = content()
  }

  // MARK: - Functions

  /// Inserts a new attribute to the element. If an attribute with the same name already exists, the value of the specified attribute will be appended.
  /// - Parameter attribute: The attribute to add to the element.
  /// - Returns: The element updated with the new attribute.
  public func appending(_ attribute: Attribute) -> Element {
    Element(tag: tag.appending(attribute), content: content)
  }
}

// MARK: - Component

extension Element: Component {
  public var body: Component {
    self
  }
}
