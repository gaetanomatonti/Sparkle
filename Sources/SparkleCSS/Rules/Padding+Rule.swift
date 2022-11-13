extension Rule {
  /// Creates a rule that sets the padding on all edges of a component.
  /// - Parameter value: The value of the padding to apply.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding<V>(_ value: V) -> Rule where V: MeasurementValue {
    padding(.all, value)
  }

  /// Creates a rule that sets the padding of a component.
  /// - Parameters:
  ///   - edge: The edge where the padding should be applied.
  ///   - value: The value of the padding to apply.
  /// - Returns: The rule for a class that sets the padding.
  public static func padding<V>(_ edge: Edge.Set, _ value: V) -> Rule where V: MeasurementValue {
    let declarations: [Declaration] = edge.edges.map { edge in
        .padding(edge, value)
    }

    switch edge {
      case .all:
        return Rule(
          .class("padding-\(value.render())"),
          declarations: .padding(value)
        )

      case .horizontal, .vertical, .top, .left, .right, .bottom:
        return Rule(
          .class("padding-\(edge.name)-\(value.render())"),
          declarations: declarations
        )

      default:
        return Rule(
          .class("padding-\(edge.name)-\(value.render())"),
          declarations: declarations
        )
    }
  }
}
