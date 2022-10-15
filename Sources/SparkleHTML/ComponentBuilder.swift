/// A result builder that constructs `Component`s from closures.
@resultBuilder
public struct ComponentBuilder {
  public static func buildBlock(_ component: Component) -> Component {
    component
  }

  public static func buildBlock(_ components: Component...) -> Group {
    Group(components: components)
  }

  public static func buildEither(first component: Component) -> Component {
    component
  }

  public static func buildEither(second component: Component) -> Component {
    component
  }
}
