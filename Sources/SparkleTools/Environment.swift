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

/// A protocol defining requirements for a key for accessing values in the environment.
public protocol EnvironmentKey {
  /// The associated type representing the type of the environment key's value.
  associatedtype Value

  /// The default value for the environment key.
  static var defaultValue: Value { get set }
}
