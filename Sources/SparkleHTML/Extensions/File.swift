extension Set where Element == Attribute {
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
