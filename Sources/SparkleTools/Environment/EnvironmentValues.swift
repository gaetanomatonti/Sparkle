/// A collection of environment values.
public struct EnvironmentValues {
  /// The main instance of the collection.
  static var current = EnvironmentValues()

  /// A static subscript for updating the `currentValue` of `InjectionKey` instances.
  public static subscript<Key: EnvironmentKey>(key: Key.Type) -> Key.Value {
    get {
      key.defaultValue
    }
    set {
      key.defaultValue = newValue
    }
  }
}

@propertyWrapper
public struct Environment<Value> {
  public var wrappedValue: Value

  public init(_ keyPath: KeyPath<EnvironmentValues, Value>) {
    wrappedValue = EnvironmentValues.current[keyPath: keyPath]
  }
}
