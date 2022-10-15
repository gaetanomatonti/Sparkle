/// A result builder that constructs `Component`s from closures.
@resultBuilder
public struct ComponentBuilder {
  public static func buildBlock(_ component: Component) -> Component {
    component
  }

  public static func buildBlock(_ components: Component...) -> Group {
    Group(components: components)
  }
}
