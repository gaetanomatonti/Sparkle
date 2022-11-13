import Foundation

public struct IdentifiedValue<V>: Value where V: Value {
  let name: String

  let value: V

  public func render() -> String {
    value.render()
  }
}

extension IdentifiedValue: Color, ForegroundStyle {
  public var className: String {
    name
  }
}
