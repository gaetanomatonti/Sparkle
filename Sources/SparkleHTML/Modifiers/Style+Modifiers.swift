import SparkleCSS
import SparkleTools

extension Component {
  /// Applies the specified CSS rule to the HTML component and registers the rule for rendering.
  /// - Parameter rule: The rule to apply to the component.
  /// - Returns: The updated comopnent.
  public func rule(_ rule: Rule) -> Component {
    EnvironmentValues.styleSheetRenderer.insert(rule)
    return self.class(rule.name)
  }
}

// MARK: - Style Modifiers

extension Component {
  /// Sets the value of the gap between the elements.
  /// - Parameter value: The value of the gap.
  /// - Returns: The component updated with the gap.
  public func gap(_ value: Unit) -> Component {
    rule(.gap(value))
  }

  // MARK: - Flex

  /// Displays the component as a flex container.
  /// - Parameter direction: The direction of the layout.
  /// - Returns: The component updated with the flex layout and direction.
  public func flex(_ direction: Flex.Direction = .defaultValue) -> Component {
    rule(
      Rule(
        "flex-\(direction.rawValue)",
        declarations: .flex(), .flex(direction)
      )
    )
  }

  /// Applies the specified flex content justification.
  /// - Parameter justification: The justification of the content.
  /// - Returns: The component updated with the justification.
  public func justifyContent(_ justification: Flex.Content.Justification) -> Component {
    return rule(.justifyContent(justification))
  }

  /// Applies the specified flex content alignment.
  /// - Parameter justification: The alignment of the content.
  /// - Returns: The component updated with the alignment.
  public func alignContent(_ alignment: Flex.Content.Alignment) -> Component {
    rule(.alignContent(alignment))
  }

  /// Applies the specified flex items alignment.
  /// - Parameter justification: The alignment of the items.
  /// - Returns: The component updated with the alignment.
  public func alignItems(_ alignment: Flex.Item.Alignment) -> Component {
    rule(.alignItems(alignment))
  }

  // MARK: Margin

  /// Applies a margin to the component.
  /// - Parameter value: The value of the margin.
  /// - Returns: The component updated with the newly generated margin class.
  public func margin(_ value: Unit) -> Component {
    rule(.margin(value))
  }

  /// Applies a margin to the component.
  /// - Parameters:
  ///   - edge: The edge on which to apply the margin.
  ///   - value: The value of the margin.
  /// - Returns: The component updated with the newly generated margin class.
  public func margin(_ edge: Edge, _ value: Unit) -> Component {
    rule(.margin(edge, value))
  }

  // MARK: Padding

  /// Applies a padding to the component.
  /// - Parameter value: The value of the padding.
  /// - Returns: The component updated with the newly generated padding class.
  public func padding(_ value: Unit) -> Component {
    rule(.padding(value))
  }

  /// Applies a padding to the component.
  /// - Parameters:
  ///   - edge: The edge on which to apply the padding.
  ///   - value: The value of the padding.
  /// - Returns: The component updated with the newly generated padding class.
  public func padding(_ edge: Edge, _ value: Unit) -> Component {
    rule(.padding(edge, value))
  }
}
