import Foundation

/// A unit of measurement.
public enum Unit {
  /// Automatically calculate the margin.
  case auto

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
      case .auto:
        return "auto"
        
      case let .pixel(value):
        return "\(value)px"

      case let .em(value):
        return "\(value.escapedFloatingPoint)em"

      case let .rem(value):
        return "\(value.escapedFloatingPoint)rem"
    }
  }
}
