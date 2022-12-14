import SparkleTools

/// A type representing an attribute that can be added to an HTML element.
public struct Attribute {

  // MARK: - Stored Properties

  /// The name of the attribute.
  let name: String

  /// The values of the attribute.
  let values: [String]

  // MARK: - Init

  /// Creates a valueless HTML attribute.
  /// - Parameter name: The name of the attribute.
  init(_ name: String) {
    self.name = name
    self.values = []
  }

  /// Creates a new HTML attribute.
  /// - Parameters:
  ///   - name: The name of the attribute.
  ///   - value: The value of the attribute.
  init(_ name: String, value: String) {
    self.name = name
    self.values = [value]
  }

  /// Creates a new HTML attribute.
  /// - Parameters:
  ///   - name: The name of the attribute.
  ///   - values: The list of values of the attribute.
  init(_ name: String, values: [String]) {
    self.name = name
    self.values = values
  }

  /// Inserts a new value and returns the updated attribute.
  /// - Parameter value: The value to append.
  /// - Returns: The attribute updated with the appended value.
  func appending(value: String) -> Attribute {
    Attribute(name, values: values + [value])
  }

  /// Inserts a new list of values and returns the updated attribute.
  /// - Parameter value: The list of values to append.
  /// - Returns: The attribute updated with the appended values.
  func appending(values: [String]) -> Attribute {
    Attribute(name, values: self.values + values)
  }
}

// MARK: - Hashable

extension Attribute: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(name)
  }
}

extension Attribute: Comparable {
  public static func <(lhs: Attribute, rhs: Attribute) -> Bool {
    lhs.name < rhs.name
  }
}
