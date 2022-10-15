/// Adds the specified attribute to the underlying element.
/// - Parameter attribute: The attribute to add to the element.
/// - Returns: The component updated with the specified attribute.
extension Component {
  public func attribute(_ attribute: Attribute) -> Component {
    if let body = body as? Element {
      return body.appending(attribute)
    }

    return self
  }
}

extension Component {
  /// Adds a `class` attribute to the component.
  /// - Parameter name: The name of the class to add.
  /// - Returns: The component updated with the `class` attribute.
  public func `class`(_ names: String...) -> Component {
    attribute(.class(names))
  }

  /// Adds a `href` attribute to the component.
  /// - Parameter path: The path of the resource to link.
  /// - Returns: The component updated with the `href` attribute.
  public func href(_ path: String) -> Component {
    attribute(.href(path))
  }

  /// Adds a `rel` attribute to the component.
  /// - Parameter relationship: The relationship to the linked resource.
  /// - Returns: The component updated with the `rel` attribute.
  public func rel(_ relationship: Relationship) -> Component {
    attribute(.rel(relationship))
  }
}
