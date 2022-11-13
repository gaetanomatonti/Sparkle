import SparkleTools

/// A protocol that defines requirements for a CSS value.
public protocol Value: Renderable {
  var className: String { get }
}

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

public extension Value {
  /// Adds an identifier to the value which will be used to identify it in the stylesheet.
  /// - Parameter name: The name to use as an identifier for the value.
  /// - Returns: A `IdentifiedValue` that wraps and identifies the value.
  func identifier(_ name: String) -> IdentifiedValue<Self> {
    IdentifiedValue(name: name, value: self)
  }
}
