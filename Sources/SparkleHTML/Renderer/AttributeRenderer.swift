extension HTMLRenderer {
  /// An object that renders HTML attributes.
  struct AttributeRenderer {

    // MARK: - Functions

    /// Renders an HTML attribute into a `String`.
    /// - Parameter attribute: The attribute to render.
    /// - Returns: The `String` representing the attribute.
    func render(_ attribute: Attribute) -> String {
      guard !attribute.values.isEmpty else {
        return attribute.name
      }

      let joinedValues = attribute.values
        .sorted()
        .joined(separator: " ")

      return "\(attribute.name)=\"\(joinedValues)\""
    }

    /// Renders a list of HTML attributes into a `String`.
    /// - Parameter attributes: The attributes to render.
    /// - Returns: The `String` representing the attributes.
    func render(_ attributes: Set<Attribute>) -> String {
      attributes
        .sorted()
        .map { render($0) }
        .joined(separator: " ")
    }
  }
}
