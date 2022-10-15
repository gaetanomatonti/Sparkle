import SparkleTools

/// A type representing an HTML element.
public struct Element {
  /// The name of the element, reflected in the opening and closing tags, if any.
  let name: String

  /// The attributes of the element.
  private(set) var attributes: Set<Attribute>

  /// The content of the element, placed between the opening and closing tags.
  let content: Renderable?

  let closingMode: ClosingMode

  var openingTag: String {
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

  var closingTag: String? {
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

  init(name: String, attributes: [Attribute] = [], content: Renderable? = nil) {
    self.name = name
    self.attributes = Set(attributes)
    self.content = content
    self.closingMode = content == nil ? .selfClosing : .standard
  }

  init(name: String, attributes: [Attribute] = [], @ComponentBuilder content: () -> Renderable) {
    self.name = name
    self.attributes = Set(attributes)
    self.content = content()
    self.closingMode = .standard
  }

  public func appending(_ attribute: Attribute) -> Self {
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

extension Element: Component {
  public var body: Component {
    self
  }
}

extension Element: Renderable {
  public func render() -> String {
    openingTag + (closingTag ?? "")
  }
}

enum ClosingMode {
  case standard

  case selfClosing
}
