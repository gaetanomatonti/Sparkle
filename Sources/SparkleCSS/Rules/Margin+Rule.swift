extension Rule {
  /// Creates a rule that sets the margins of a component.
  /// - Parameter value: The value of the margin on all edges.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(_ value: Unit) -> Rule {
    margin(.all, value)
  }

  /// Creates a rule that sets the margins of a component.
  /// - Parameters:
  ///   - edge: The edge where the margin should be applied.
  ///   - value: The value of the margin to apply.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin(_ edge: Edge.Set, _ value: Unit) -> Rule {
    let declarations: [Declaration] = edge.edges.map { edge in
        .margin(edge, value)
    }

    switch edge {
      case .all:
        return Rule(
          .class("margin-\(value.render())"),
          declarations: .margin(value)
        )

      case .horizontal, .vertical, .top, .left, .right, .bottom:
        return Rule(
          .class("margin-\(edge.name)-\(value.render())"),
          declarations: declarations
        )

      default:
        return Rule(
          .class("margin-\(edge.name)-\(value.render())"),
          declarations: declarations
        )
    }
  }
}
