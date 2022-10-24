/// A property wrapper that normalizes the wrapped value into the allowed values for a percentage expressed with floating point (from 0 to 1.0).
@propertyWrapper
public struct Percentage {
  public var wrappedValue: Double = 1.0 {
    didSet {
      wrappedValue = max(0, min(1, wrappedValue))
    }
  }

  /// The percentage expressed as an integer. Ranges between 0 and 100.
  public var integerValue: Int {
    Int(wrappedValue * 100)
  }

  /// The `String` representation of the percentage.
  ///
  /// ```
  /// "50%"
  /// ```
  public var stringRepresentation: String {
    integerValue.description + "%"
  }

  // MARK: - Init

  public init(wrappedValue: Double) {
    self.wrappedValue = max(0, min(1, wrappedValue))
  }
}

extension Percentage: Equatable {}

postfix operator %
extension Int {
  public postfix static func %(_ value: Int) -> Double {
    Double(value) / 100
  }
}
