public struct Viewport {
  public struct Height {
    let value: Double

    public init(_ value: Double) {
      self.value = value
    }
  }

  public struct Width {
    let value: Double

    public init(_ value: Double) {
      self.value = value
    }
  }
}

extension Viewport.Height: MeasurementValue {
  public func render() -> String {
    value.escapedFloatingPoint + "vh"
  }
}

extension Viewport.Width: MeasurementValue {
  public func render() -> String {
    value.escapedFloatingPoint + "vw"
  }
}
