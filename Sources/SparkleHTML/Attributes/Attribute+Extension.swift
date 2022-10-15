extension Attribute {

  // MARK: - Constants

  /// The `defer` attribute.
  public static let `defer` = Attribute("defer")

  // MARK: - Functions

  /// Creates a `class` attribute.
  /// - Parameter names: The names of the classes to add.
  /// - Returns: The created `class` attribute.
  public static func `class`(_ names: String...) -> Attribute {
    Attribute("class", values: names)
  }

  /// Creates a `class` attribute.
  /// - Parameter names: The names of the classes to add.
  /// - Returns: The created `class` attribute.
  public static func `class`(_ names: [String]) -> Attribute {
    Attribute("class", values: names)
  }

  /// Creates a `height` attribute.
  /// - Parameter height: The height of the element
  /// - Returns: The created `width` attribute.
  public static func height(_ height: String) -> Attribute {
    Attribute("height", value: height)
  }

  /// Creates a `href` attribute.
  /// - Parameter path: The path of the resource to link.
  /// - Returns: The created `href` attribute.
  public static func href(_ path: String) -> Attribute {
    Attribute("href", value: path)
  }

  /// Creates a `id` attribute.
  /// - Parameter name: The name of the identifier to attach to the element.
  /// - Returns: The created `id` attribute.
  public static func identifier(_ name: String) -> Attribute {
    Attribute("id", value: name)
  }

  /// Creates a `rel` attribute.
  /// - Parameter relationship: The relationship to the linked resource.
  /// - Returns: The created `rel` attribute.
  public static func rel(_ relationship: Relationship) -> Attribute {
    Attribute("rel", value: relationship.rawValue)
  }

  /// Creates a `src` attribute.
  /// - Parameter path: The path to the linked resource.
  /// - Returns: The created `src` attribute.
  public static func src(_ path: String) -> Attribute {
    Attribute("src", value: path)
  }

  /// Creates a `width` attribute.
  /// - Parameter width: The width of the element
  /// - Returns: The created `width` attribute.
  public static func width(_ width: String) -> Attribute {
    Attribute("width", value: width)
  }
}
