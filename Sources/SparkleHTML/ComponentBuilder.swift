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

/// A component that collects multiple instances of `Component`.
public struct Group: Component {
  let components: [Component]

  public var body: Component {
    fatalError()
  }

  public func render() -> String {
    components.map {
      $0.render()
    }
    .joined()
  }
}
