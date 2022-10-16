import SparkleTools

/// A protocol defining requirements for a CSS value.
public protocol Value: Renderable {}

public protocol ValueWithDefaultValue: Value, Equatable {
  /// The default value of the property.
  static var defaultValue: Self { get }
}
