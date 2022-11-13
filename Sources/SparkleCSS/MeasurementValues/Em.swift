/// A type that represents the em measurement unit.
public struct EM {
  /// The value of the measurement.
  let value: Double

  /// Creates an instance of a `em` measurement unit.
  /// - Parameter value: The value of the measurement.
  public init(_ value: Double) {
    self.value = value
  }
}

extension EM: MeasurementValue {
  public var className: String {
    render()
  }

  public func render() -> String {
    value.escapedFloatingPoint + "em"
  }
}
