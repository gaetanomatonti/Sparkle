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

extension Unit: Equatable {
  public static func ==(lhs: Unit, rhs: Unit) -> Bool {
    switch (lhs, rhs) {
      case (.zero, .zero), (.auto, .auto):
        return true

      case let (.pixel(lhsValue), .pixel(rhsValue)):
        return lhsValue == rhsValue

      case let (.em(lhsValue), .em(rhsValue)),
        let (.rem(lhsValue), .rem(rhsValue)),
        let (.vh(lhsValue), .vh(rhsValue)),
        let (.vw(lhsValue), .vw(rhsValue)):
        return lhsValue == rhsValue

      case (.zero, _), (.auto, _), (.pixel, _), (.em, _), (.rem, _), (.vh, _), (.vw, _):
        return false
    }
  }
}
