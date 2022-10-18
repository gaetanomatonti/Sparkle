/// A property wrapper that normalizes the wrapped value into the allowed values for degress (from 0 to 360).
@propertyWrapper
public struct Degrees {
  public var wrappedValue: Int = 0 {
    didSet {
      wrappedValue = max(0, min(360, wrappedValue))
    }
  }

  public init(wrappedValue: Int) {
    self.wrappedValue = max(0, min(360, wrappedValue))
  }
}
