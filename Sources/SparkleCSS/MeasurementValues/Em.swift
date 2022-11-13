public struct EM {
  let value: Double

  public init(_ value: Double) {
    self.value = value
  }
}

extension EM: MeasurementValue {
  public func render() -> String {
    value.escapedFloatingPoint + "em"
  }
}
