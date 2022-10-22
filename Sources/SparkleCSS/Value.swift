import SparkleTools

/// A protocol that defines requirements for a CSS value.
public protocol Value: Renderable {}

/// A protocol that defines requirements for a value that provides a default value.
public protocol ValueWithDefaultValue: Value, Equatable {
  /// The default value of the property.
  static var defaultValue: Self { get }
}

extension Value where Self: RawRepresentable, RawValue == String {
  public func render() -> String {
    rawValue
  }
}

extension Value where Self: RawRepresentable, RawValue == Int {
  public func render() -> String {
    rawValue.description
  }
}
