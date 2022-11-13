/// Clamps the value within a range defined by a minimum and maximum bound.
public struct Clamp<Minimum, Value, Maximum> where Minimum: MeasurementValue, Value: MeasurementValue, Maximum: MeasurementValue {

  // MARK: - Stored Properties

  /// The minimum allowed value.
  let minimum: Minimum

  /// The preferred value that will be used as long as it is between the minimum and maximum values.
  let value: Value

  /// The maximum allowed value.
  let maximum: Maximum

  // MARK: - Init

  public init(_ minimum: Minimum, _ value: Value, _ maximum: Maximum) {
    self.minimum = minimum
    self.value = value
    self.maximum = maximum
  }
}

extension Clamp: MeasurementValue {
  public func render() -> String {
    "clamp(\(minimum.render()), \(value.render()), \(maximum.render()))"
  }
}
