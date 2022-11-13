import Foundation

/// A type that wraps and identifies a value.
public struct IdentifiedValue<V> where V: Value {
  /// The name used to identify the value.
  let name: String

  /// The wrapped value.
  let value: V
}

extension IdentifiedValue: Value {
  public var className: String {
    name
  }

  public func render() -> String {
    value.render()
  }
}

extension IdentifiedValue: Equatable where V: Equatable {}

extension IdentifiedValue: BackgroundImage where V: BackgroundImage {}

extension IdentifiedValue: BackgroundStyle where V: BackgroundStyle {}

extension IdentifiedValue: Color where V: Color {}

extension IdentifiedValue: ForegroundStyle where V: ForegroundStyle {}

extension IdentifiedValue: MeasurementValue where V: MeasurementValue {}
