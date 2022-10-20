/// Creates the declaration that specifies the source of a resource.
/// - Parameter source: The source of the resource.
/// - Returns: The declaration that specifies a resource.
extension Declaration {
  public static func source(_ source: Source) -> Declaration {
    Declaration(property: "src", value: source)
  }
}
