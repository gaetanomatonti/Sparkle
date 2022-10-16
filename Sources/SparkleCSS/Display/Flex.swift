public enum Flex {}

extension Flex {
  public enum Content {}
}

extension Flex.Content {
  /// The possible alignments for the content of the flex layout.
  /// - Note: These only apply to the `align-content` property.
  public enum Alignment: String, Value {
    /// Items are packed in their default position.
    case normal

    /// Items are packed toward the start of the container, considering the flex direction.
    case flexStart = "flex-start"

    /// Items are packed toward the end of the container, considering the flex direction.
    case flexEnd = "flex-end"

    /// Items are centered in the container.
    case center

    /// Items are distributed so that the spacing between the lines is equal.
    /// - Note: There is no space against the container's edges.
    case spaceBetween = "space-between"

    /// Items are distributed so that the spacing around the lines is equal.
    /// - Note: The space between the lines is double the space against the container's edges.
    case spaceAround = "space-around"

    /// Items are distributed so that the spacing between and around the lines is equal.
    case spaceEvenly = "space-evenly"

    /// Stretches the lines to take up all the space of the container.
    case stretch

    /// The default value of the content alignment.
    public static var defaultValue: Alignment {
      .normal
    }

    public func render() -> String {
      rawValue
    }
  }

  /// The possible justifications for the content of the flex layout.
  /// - Note: These only apply to the `justify-content` property.
  public enum Justification: String, Value {
    /// Items are packed toward the start of the direction.
    case flexStart = "flex-start"

    /// Items are packed toward the end of the direction.
    case flexEnd = "flex-end"

    /// Items are centered along the line.
    case center

    /// Items are distributed so that the spacing between the items is equal.
    /// - Note: There is no space against the container's edges.
    case spaceBetween = "space-between"

    /// Items are distributed so that the spacing around the items is equal.
    /// - Note: The space between the items is double the space against the container's edges.
    case spaceAround = "space-around"

    /// Items are distributed so that the spacing between and around the items is equal.
    case spaceEvenly = "space-evenly"

    /// The default value of the content justification.
    public static var defaultValue: Justification {
      .flexStart
    }

    public func render() -> String {
      rawValue
    }
  }
}

extension Flex {
  /// The possible direction of a flow layout.
  public enum Direction: String, Value {
    /// Stacks items vertically.
    case column

    /// Stacks items horizontally.
    case row

    /// Stacks items vertically but in reverse order (from bottom to top).
    case reversedColumn = "column-reverse"

    /// Stacks items horizontally but in reverse order (from left to right).
    case reversedRow = "row-reverse"

    /// The default value of the flex direction.
    public static var defaultValue: Flex.Direction {
      .row
    }

    public func render() -> String {
      rawValue
    }
  }
}

extension Flex {
  public enum Item {}
}

extension Flex.Item {
  /// The possible alignments for the items of the flex layout.
  /// - Note: These only apply to the `align-items` property.
  public enum Alignment: String, Value {
    /// Stretches the items to fill the container.
    case stretch

    /// Items are places at the start of the cross axis.
    case flexStart = "flex-start"

    /// Items are places at the end of the cross axis.
    case flexEnd = "flex-end"

    /// Items are centered on the cross-axis.
    case center

    /// Items are aligned so that their baselines align.
    case baseline

    /// The default value of the item alignment.
    public static var defaultValue: Alignment {
      .stretch
    }

    public func render() -> String {
      rawValue
    }
  }
}
