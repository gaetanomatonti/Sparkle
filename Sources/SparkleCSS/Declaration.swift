import SparkleTools

/// A type representing a rule declaration.
public struct Declaration: Hashable {

  // MARK: - Stored Properties

  /// The name of the CSS property.
  let property: String

  /// The value of the declaration.
  let value: String

  // MARK: - Init

  /// Creates a CSS declaration with a single value.
  /// - Parameters:
  ///   - property: The name of the CSS property.
  ///   - value: The value of the declaration.
  public init<V: Value>(property: String, value: V) {
    self.property = property
    self.value = value.render()
  }

  /// Creates a CSS declaration with multiple values.
  /// - Parameters:
  ///   - property: The name of the CSS property.
  ///   - values: The values in the declaration.
  public init<V: Value>(property: String, values: [V]) {
    self.property = property
    self.value = values.render()
  }
}

// MARK: - Equatable

extension Declaration: Equatable {}

extension Collection where Element: Renderable {
  public func render() -> String {
    map {
      $0.render()
    }
    .joined(separator: " ")
  }
}
