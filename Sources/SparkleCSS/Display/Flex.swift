public enum Flex {}

extension Flex {
  /// The possible direction of a flow layout.
  public enum Direction: String {
    /// Stacks items vertically.
    case column

    /// Stacks items horizontally.
    case row

    /// Stacks items vertically but in reverse order (from bottom to top).
    case reversedColumn = "column-reverse"

    /// Stacks items horizontally but in reverse order (from left to right).
    case reversedRow = "row-reverse"
  }
}

extension Flex.Direction: Value {
  /// The default value of the flex direction.
  public static var defaultValue: Flex.Direction {
    .row
  }

  public func render() -> String {
    rawValue
  }
}
