/// A collection of environment values.
public struct EnvironmentValues {
  /// The main instance of the collection.
  private static var current = EnvironmentValues()

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
