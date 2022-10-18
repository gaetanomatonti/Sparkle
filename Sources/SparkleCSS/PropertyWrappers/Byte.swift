/// A property wrapper that normalizes the wrapped value into the allowed values for a byte (from 0 to 255).
@propertyWrapper
public struct Byte {
  public var wrappedValue: Int = 0 {
    didSet {
      wrappedValue = max(0, min(255, wrappedValue))
    }
  }

  public init(wrappedValue: Int) {
    self.wrappedValue = max(0, min(255, wrappedValue))
  }
}
