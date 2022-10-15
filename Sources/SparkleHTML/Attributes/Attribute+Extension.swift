extension Attribute {
  /// Adds a `class` attribute to the component.
  /// - Parameter names: The names of the classes to add.
  /// - Returns: The component updated with the `class` attribute.
  public static func `class`(_ names: String...) -> Attribute {
    Attribute("class", values: names)
  }

  /// Adds a `class` attribute to the component.
  /// - Parameter names: The names of the classes to add.
  /// - Returns: The component updated with the `class` attribute.
  public static func `class`(_ names: [String]) -> Attribute {
    Attribute("class", values: names)
  }

  /// Adds a `href` attribute to the component.
  /// - Parameter path: The path of the resource to link.
  /// - Returns: The component updated with the `href` attribute.
  public static func href(_ path: String) -> Attribute {
    Attribute("href", value: path)
  }

  /// Adds a `rel` attribute to the component.
  /// - Parameter relationship: The relationship to the linked resource.
  /// - Returns: The component updated with the `rel` attribute.
  public static func rel(_ relationship: Relationship) -> Attribute {
    Attribute("rel", value: relationship.rawValue)
  }
}
