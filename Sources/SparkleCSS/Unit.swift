/// A unit of measurement.
public enum Unit {
  /// The pixel unit.
  case pixel(_ value: Int)

  /// The em unit.
  case em(_ value: Double)

  /// The rem unit.
  case rem(_ value: Double)
}

extension Unit: Value {
  public func render() -> String {
    switch self {
      case let .pixel(value):
        return "\(value)px"

      case let .em(value):
        return "\(value)em"

      case let .rem(value):
        return "\(value)rem"
    }
  }
}
