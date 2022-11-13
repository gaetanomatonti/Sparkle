/// A type representing a value calculation.
public struct Calculation<LHS, RHS> where LHS: MeasurementValue, RHS: MeasurementValue {
  /// The enumeration of the supported operations.
  enum Operation: String {
    /// The sum operation.
    case sum = "+"

    /// The subtraction operation.
    case subtraction = "-"

    /// The multiplication operation.
    case multiplication = "*"

    /// The division operation.
    case division = "/"
  }

  /// The operation of the calculation.
  let operation: Operation

  /// The left hand side operand.
  let lhs: LHS

  /// The right hand side operand.
  let rhs: RHS
}

extension Calculation: MeasurementValue {
  public var className: String {
    render()
  }

  public func render() -> String {
    "calc(\(lhs.render()) \(operation.rawValue) \(rhs.render()))"
  }
}

extension MeasurementValue {
  public static func +<RHS>(lhs: Self, rhs: RHS) -> Calculation<Self, RHS> where RHS: MeasurementValue {
    Calculation(operation: .sum, lhs: lhs, rhs: rhs)
  }

  public static func -<RHS>(lhs: Self, rhs: RHS) -> Calculation<Self, RHS> where RHS: MeasurementValue {
    Calculation(operation: .subtraction, lhs: lhs, rhs: rhs)
  }

  public static func *<RHS>(lhs: Self, rhs: RHS) -> Calculation<Self, RHS> where RHS: MeasurementValue {
    Calculation(operation: .multiplication, lhs: lhs, rhs: rhs)
  }

  public static func /<RHS>(lhs: Self, rhs: RHS) -> Calculation<Self, RHS> where RHS: MeasurementValue {
    Calculation(operation: .division, lhs: lhs, rhs: rhs)
  }
}
