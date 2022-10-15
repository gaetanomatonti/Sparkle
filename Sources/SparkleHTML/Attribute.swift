import SparkleTools

/// A type representing an attribute that can be added to an HTML element.
public struct Attribute {
  /// The name of the attribute.
  let name: String

  /// The values of the attribute.
  let values: [String]

  init(_ name: String, value: String) {
    self.name = name
    self.values = [value]
  }

  init(_ name: String, values: [String]) {
    self.name = name
    self.values = values
  }

  func appending(value: String) -> Attribute {
    Attribute(name, values: values + [value])
  }

  func appending(values: [String]) -> Attribute {
    Attribute(name, values: self.values + values)
  }
}

extension Attribute: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(name)
  }
}

extension Attribute: Renderable {
  public func render() -> String {
    let joinedValues = values
      .sorted()
      .joined(separator: " ")

    return "\(name)=\"\(joinedValues)\""
  }
}

extension Collection where Element == Attribute {
  func render() -> String {
    map {
      $0.render()
    }
    .joined(separator: " ")
  }
}
