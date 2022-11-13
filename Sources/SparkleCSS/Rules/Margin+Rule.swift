extension Rule {
  /// Creates a rule that sets the margins of a component.
  /// - Parameter value: The value of the margin on all edges.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin<V>(_ value: V) -> Rule where V: MeasurementValue {
    margin(.all, value)
  }

  /// Creates a rule that sets the margins of a component.
  /// - Parameters:
  ///   - edge: The edge where the margin should be applied.
  ///   - value: The value of the margin to apply.
  /// - Returns: The rule for a class that sets the margins.
  public static func margin<V>(_ edge: Edge.Set, _ value: V) -> Rule where V: MeasurementValue {
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
