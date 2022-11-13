/// A protocol that defines requirements for a value that represents a measurement.
public protocol MeasurementValue: Value, Equatable {}

extension MeasurementValue where Self == Zero {
  public static var zero: Zero {
    Zero()
  }
}

extension MeasurementValue where Self == Auto {
  public static var auto: Auto {
    Auto()
  }
}

extension MeasurementValue where Self == EM {
  public static func em(_ value: Double) -> EM {
    EM(value)
  }
}

extension MeasurementValue where Self == REM {
  public static func rem(_ value: Double) -> REM {
    REM(value)
  }
}

extension MeasurementValue where Self == Pixel {
  public static func pixel(_ value: Double) -> Pixel {
    Pixel(value)
  }
}

extension MeasurementValue where Self == Viewport.Height {
  public static func vh(_ value: Double) -> Viewport.Height {
    Viewport.Height(value)
  }
}

extension MeasurementValue where Self == Viewport.Width {
  public static func vw(_ value: Double) -> Viewport.Width {
    Viewport.Width(value)
  }
}
