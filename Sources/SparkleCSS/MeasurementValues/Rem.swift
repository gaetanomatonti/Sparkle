public struct REM {
  let value: Double

  public init(_ value: Double) {
    self.value = value
  }
}

extension REM: MeasurementValue {
  public func render() -> String {
    value.escapedFloatingPoint + "rem"
  }
}
