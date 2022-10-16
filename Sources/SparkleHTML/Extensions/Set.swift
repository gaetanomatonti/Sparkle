extension Set where Element == Attribute {
  /// Updates the attribute in the set if it already exists. If it doesn't exist it inserts it.
  /// - Parameter attribute: The attribute to update in the set.
  mutating func updating(_ attribute: Attribute) {
    guard let existingAttribute = first(where: { $0.name == attribute.name }) else {
      insert(attribute)
      return
    }

    let updatedAttribute = existingAttribute.appending(values: attribute.values)
    remove(existingAttribute)
    insert(updatedAttribute)
  }
}
