/// Adds the specified attribute to the underlying element.
/// - Parameter attribute: The attribute to add to the element.
/// - Returns: The component updated with the specified attribute.
extension Component {
  public func attribute(_ attribute: Attribute) -> Component {
    if let component = self as? AttributedComponent {
      return component.appending(attribute)
    }

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

  /// Adds a `defer` attribute to the component.
  /// - Returns: The component updated with the `defer` attribute.
  public func `defer`() -> Component {
    attribute(.defer)
  }

  /// Adds a `height` attribute to the component.
  /// - Parameter height: The height of the element
  /// - Returns: The component updated with the `width` attribute.
  public func height(_ height: String) -> Component {
    attribute(.height(height))
  }

  /// Adds a `href` attribute to the component.
  /// - Parameter path: The path of the resource to link.
  /// - Returns: The component updated with the `href` attribute.
  public func href(_ path: String) -> Component {
    attribute(.href(path))
  }

  /// Adds a `id` attribute to the component.
  /// - Parameter name: The name of the identifier to attach to the element.
  /// - Returns: The component updated with the `id` attribute.
  public func identifier(_ name: String) -> Component {
    attribute(.identifier(name))
  }

  /// Adds a `rel` attribute to the component.
  /// - Parameter relationship: The relationship to the linked resource.
  /// - Returns: The component updated with the `rel` attribute.
  public func rel(_ relationship: Relationship) -> Component {
    attribute(.rel(relationship))
  }

  /// Adds a `src` attribute to the component.
  /// - Parameter path: The path to the linked resource.
  /// - Returns: The component updated with the `src` attribute.
  public func src(_ path: String) -> Component {
    attribute(.src(path))
  }

  /// Adds a `width` attribute to the component.
  /// - Parameter width: The width of the element
  /// - Returns: The component updated with the `width` attribute.
  public func width(_ width: String) -> Component {
    attribute(.width(width))
  }
}
