/// A component that collects multiple instances of `Component`.
public struct Group: Component {
  let components: [Component]

  public var body: Component {
    fatalError("This body should not be accessed.")
  }

  public func render() -> String {
    components.map {
      $0.render()
    }
    .joined()
  }
}
