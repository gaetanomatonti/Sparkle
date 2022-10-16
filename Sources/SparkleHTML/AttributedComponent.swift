/// A protocol defining requirements for a component that contains attributes.
protocol AttributedComponent: Component {
  /// The attributes of the component.
  var attributes: Set<Attribute> { get set }
}

extension AttributedComponent {
  /// Inserts a new attribute to the component. If an attribute with the same name already exists, the value of the specified attribute will be appended.
  /// - Parameter attribute: The attribute to add to the component.
  /// - Returns: The component updated with the new attribute.
  public func appending(_ attribute: Attribute) -> Self {
    var updatedComponent = self
    updatedComponent.attributes.updating(attribute)
    return updatedComponent
  }
}
