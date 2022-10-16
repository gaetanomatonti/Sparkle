import Foundation

/// A unit of measurement.
public enum Unit {
  /// Zero value.
  case zero

  /// Automatically calculate the margin.
  case auto

  /// The pixel unit.
  case pixel(_ value: Int)

  /// The em unit.
  case em(_ value: Double)

  /// The rem unit.
  case rem(_ value: Double)

  /// Percentage relative to the width of the viewport.
  case vw(_ value: Double)

  /// Percentage relative to the height of the viewport.
  case vh(_ value: Double)
}

extension Unit: Value {
  public func render() -> String {
    switch self {
      case .zero:
        return "0"
        
      case .auto:
        return "auto"
        
      case let .pixel(value):
        return "\(value)px"

      case let .em(value):
        return "\(value.escapedFloatingPoint)em"

      case let .rem(value):
        return "\(value.escapedFloatingPoint)rem"

      case let .vw(value):
        return "\(value.escapedFloatingPoint)vw"

      case let .vh(value):
        return "\(value.escapedFloatingPoint)vh"
    }
  }
}
