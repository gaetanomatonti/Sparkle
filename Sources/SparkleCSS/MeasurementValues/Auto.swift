/// A type that represents a measurement that automatically infers its value.
public struct Auto: MeasurementValue {
  public var className: String {
    render()
  }
  
  public func render() -> String {
    "auto"
  }
}
