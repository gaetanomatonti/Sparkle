/// A component that collects multiple instances of `Component`.
public struct Group: Component {

  // MARK: - Stored Properties

  /// The list of components wrapped in the group.
  let components: [Component]

  // MARK: - Body

  public var body: Component {
    EmptyComponent()
  }
}

/// A componenty with empty body.
struct EmptyComponent: Component {
  var body: Component {
    fatalError("This body should not be accessed.")
  }
}
 
