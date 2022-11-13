public struct Viewport {
  /// A type that represents the viewport height measurement unit.
  public struct Height {
    /// The value of the measurement.
    let value: Double

    /// Creates an instance of a `vh` measurement unit.
    /// - Parameter value: The value of the measurement.
    public init(_ value: Double) {
      self.value = value
    }
  }

  /// A type that represents the viewport width measurement unit.
  public struct Width {
    /// The value of the measurement.
    let value: Double

    /// Creates an instance of a `vw` measurement unit.
    /// - Parameter value: The value of the measurement.
    public init(_ value: Double) {
      self.value = value
    }
  }
}

extension Viewport.Height: MeasurementValue {
  public var className: String {
    render()
  }

  public func render() -> String {
    value.escapedFloatingPoint + "vh"
  }
}

extension Viewport.Width: MeasurementValue {
  public var className: String {
    render()
  }
  
  public func render() -> String {
    value.escapedFloatingPoint + "vw"
  }
}
