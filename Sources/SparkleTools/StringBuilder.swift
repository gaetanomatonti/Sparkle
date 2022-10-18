/// A result builder that constructs a `String` by appending the elements in the builder closure.
@resultBuilder
public struct StringBuilder {
  public static func buildBlock(_ components: String...) -> String {
    components.joined()
  }

  static func buildArray(_ components: [String]) -> String {
    components.joined()
  }

  public static func buildEither(first component: String) -> String {
    component
  }

  public static func buildEither(second component: String) -> String {
    component
  }

  public static func buildOptional(_ component: String?) -> String {
    component ?? ""
  }
}
