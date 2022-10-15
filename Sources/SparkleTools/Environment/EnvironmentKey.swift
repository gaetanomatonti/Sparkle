/// A protocol defining requirements for a key for accessing values in the environment.
public protocol EnvironmentKey {
  /// The associated type representing the type of the environment key's value.
  associatedtype Value

  /// The default value for the environment key.
  static var defaultValue: Value { get set }
}
