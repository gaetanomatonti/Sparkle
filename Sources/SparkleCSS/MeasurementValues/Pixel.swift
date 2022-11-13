public struct Pixel {
  let value: Double

  public init(_ value: Double) {
    self.value = value
  }
}

extension Pixel: MeasurementValue {
  public func render() -> String {
    value.escapedFloatingPoint + "px"
  }
}
