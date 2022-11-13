extension Declaration {
  /// Creates the declaration that specifies the source of a resource.
  /// - Parameter source: The source of the resource.
  /// - Returns: The declaration that specifies a resource.
  public static func source(_ source: Source) -> Declaration {
    Declaration(property: "src", value: source)
  }
}
