import SparkleTools

/// A type representing an HTML element.
public struct Element: AttributedComponent {

  // MARK: - Structured Data

  /// The possible closing modes of an HTML element.
  enum ClosingMode {
    /// An opening and closing tag are used to wrap content.
    /// Example: `<p>Hello World</p>`
    case standard

    /// A single tag is used to wrap some attributes.
    /// Example: `<meta charset="UTF-8"/>`
    case selfClosing
  }

  // MARK: - Stored Properties

  /// The name of the element, reflected in the opening and closing tags, if any.
  let name: String

  /// The content of the element, placed between the opening and closing tags.
  let content: Component?

  /// The closing mode of the element.
  let closingMode: ClosingMode

  /// The attributes of the element.
  var attributes: Set<Attribute>

  // MARK: - Computed Properties

  /// The string representation of the opening tag.
  var openingTag: String {
    var tag = "<"
    tag += name

    if !attributes.isEmpty {
      tag += " "
      tag += attributes.sorted(by: { $0.name < $1.name }).render()
    }

    tag += ">"

    return tag
  }

  /// The string representation of the closing tag, if exists.
  var closingTag: String? {
    switch closingMode {
      case .standard:
        return "</" + name + ">"

      case .selfClosing:
        return nil
    }
  }

  // MARK: - Init

  /// Creates an HTML element.
  /// - Parameters:
  ///   - name: The name of the element.
  ///   - attributes: The attributes to add to the element.
  ///   - content: The content wrapped inside the element, if needed. Defaults to `nil`.
  init(name: String, attributes: Set<Attribute> = [], content: Component? = nil) {
    self.name = name
    self.attributes = attributes
    self.content = content
    self.closingMode = content == nil ? .selfClosing : .standard
  }

  /// Creates an HTML element.
  /// - Parameters:
  ///   - name: The name of the element.
  ///   - attributes: The attributes to add to the element.
  ///   - content: The closure that constructs the content wrapped inside the element.
  init(name: String, attributes: Set<Attribute> = [], @ComponentBuilder content: () -> Component) {
    self.name = name
    self.attributes = attributes
    self.content = content()
    self.closingMode = .standard
  }

  // MARK: - Functions

  /// Inserts a new attribute to the element. If an attribute with the same name already exists, the value of the specified attribute will be appended.
  /// - Parameter attribute: The attribute to add to the element.
  /// - Returns: The element updated with the new attribute.
  public func appending(_ attribute: Attribute) -> Element {
    var updatedAttributes = attributes
    updatedAttributes.updating(attribute)
    return Element(name: name, attributes: updatedAttributes, content: content)
  }
}

// MARK: - Component

extension Element {
  public var body: Component {
    self
  }
}
