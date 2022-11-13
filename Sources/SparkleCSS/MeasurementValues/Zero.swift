/// A type that represents a measurement with no value.
public struct Zero: MeasurementValue {
  public var className: String {
    render()
  }
  
  public func render() -> String {
    "0"
  }
}
