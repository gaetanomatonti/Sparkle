public struct Tag {
  /// The possible closing modes of an HTML element.
  public enum Kind {
    /// An opening and closing tag are used to wrap content.
    /// Example: `<p>Hello World</p>`
    case standard

    /// A single tag is used to wrap some attributes.
    /// Example: `<meta charset="UTF-8"/>`
    case selfClosing
  }

  /// The name of the tag.
  let name: String

  /// The kind of tag.
  let kind: Kind

  /// The attributes of the element.
  let attributes: Set<Attribute>

  public init(name: String, kind: Kind, attributes: Set<Attribute> = []) {
    self.name = name
    self.kind = kind
    self.attributes = attributes
  }

  // MARK: - Functions

  /// Inserts a new attribute to the element. If an attribute with the same name already exists, the value of the specified attribute will be appended.
  /// - Parameter attribute: The attribute to add to the element.
  /// - Returns: The element updated with the new attribute.
  public func appending(_ attribute: Attribute) -> Tag {
    var updatedAttributes = attributes
    updatedAttributes.updating(attribute)
    return Tag(name: name, kind: kind, attributes: updatedAttributes)
  }
}
