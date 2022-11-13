/// A type that represents the root em measurement unit.
public struct REM {
  /// The value of the measurement.
  let value: Double

  /// Creates an instance of a `rem` measurement unit.
  /// - Parameter value: The value of the measurement.
  public init(_ value: Double) {
    self.value = value
  }
}

extension REM: MeasurementValue {
  public var className: String {
    render()
  }
  
  public func render() -> String {
    value.escapedFloatingPoint + "rem"
  }
}
