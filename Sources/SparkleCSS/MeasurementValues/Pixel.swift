/// A type that represents the pixel measurement unit.
public struct Pixel {
  /// The value of the measurement.
  let value: Double

  /// Creates an instance of a `px` measurement unit.
  /// - Parameter value: The value of the measurement.
  public init(_ value: Double) {
    self.value = value
  }
}

extension Pixel: MeasurementValue {
  public var className: String {
    render()
  }
  
  public func render() -> String {
    value.escapedFloatingPoint + "px"
  }
}
