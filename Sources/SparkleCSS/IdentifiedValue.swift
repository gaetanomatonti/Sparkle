import Foundation

/// A type that wraps and identifies a value.
public struct IdentifiedValue<V> where V: Value {
  /// The name used to identify the value.
  let name: String

  /// The wrapped value.
  let value: V
}

extension IdentifiedValue: Value {
  public func render() -> String {
    value.render()
  }
}

extension IdentifiedValue: Equatable where V: Equatable {}

extension IdentifiedValue: MeasurementValue where V: MeasurementValue {}

extension IdentifiedValue: BackgroundImage, BackgroundStyle, Color, ForegroundStyle {
  public var className: String {
    name
  }
}
