/// The behaviours used to calculate the size of an element.
public enum BoxSizing: String {
  /// The size of the element is calculated only from the content.
  case contentBox = "content-box"

  /// The size of the element is calculated from the content, its padding and border.
  case borderBox = "border-box"

  /// Sets to its default value.
  case initial

  /// Inherits from its parent element.
  case inherit
}

extension BoxSizing: Value {
  public func render() -> String {
    rawValue
  }
}
