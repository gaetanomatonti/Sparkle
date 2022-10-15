import SparkleTools

/// A type representing an HTML element.
public struct Element {

  // MARK: - Data Structures

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
  let content: Renderable?

  /// The closing mode of the element.
  let closingMode: ClosingMode

  /// The attributes of the element.
  private(set) var attributes: Set<Attribute>

  // MARK: - Computed Properties

  /// The string representation of the opening tag.
  private var openingTag: String {
    var tag = "<"
    tag += name

    if !attributes.isEmpty {
      tag += " "
      tag += attributes.sorted(by: { $0.name < $1.name }).render()
    }

    switch closingMode {
      case .standard:
        tag += ">"

      case .selfClosing:
        tag += "/>"
    }

    return tag
  }

  /// The string representation of the closing tag, if exists.
  private var closingTag: String? {
    switch closingMode {
      case .standard:
        guard let content = content else {
          return nil
        }

        return content.render() + "</" + name + ">"

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
  init(name: String, attributes: [Attribute] = [], content: Renderable? = nil) {
    self.name = name
    self.attributes = Set(attributes)
    self.content = content
    self.closingMode = content == nil ? .selfClosing : .standard
  }

  /// Creates an HTML element.
  /// - Parameters:
  ///   - name: The name of the element.
  ///   - attributes: The attributes to add to the element.
  ///   - content: The closure that constructs the content wrapped inside the element.
  init(name: String, attributes: [Attribute] = [], @ComponentBuilder content: () -> Renderable) {
    self.name = name
    self.attributes = Set(attributes)
    self.content = content()
    self.closingMode = .standard
  }

  // MARK: - Functions

  /// Inserts a new attribute to the element. If an attribute with the same name already exists, the value of the specified attribute will be appended.
  /// - Parameter attribute: The attribute to add to the element.
  /// - Returns: The element updated with the new attribute.
  public func appending(_ attribute: Attribute) -> Element {
    if let existingAttribute = attributes.first(where: { $0.name == attribute.name }) {
      let updatedAttribute = existingAttribute.appending(values: attribute.values)
      var updatedElement = self
      updatedElement.attributes.remove(existingAttribute)
      updatedElement.attributes.insert(updatedAttribute)
      return updatedElement
    } else {
      return Element(name: name, attributes: attributes + [attribute], content: content)
    }
  }
}

// MARK: - Component

extension Element: Component {
  public var body: Component {
    self
  }
}

// MARK: - Renderable

extension Element: Renderable {
  public func render() -> String {
    openingTag + (closingTag ?? "")
  }
}
