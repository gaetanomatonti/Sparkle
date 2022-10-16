import SparkleCSS

extension Component {
  /// Displays the component as a flex container.
  /// - Parameter direction: The direction of the layout.
  /// - Returns: The component updated with the flex layout and direction.
  public func flex(_ direction: Flex.Direction = .defaultValue) -> Component {
    rule(
      Rule(
        .class("flex-\(direction.rawValue)"),
        declarations: .flex(), .flex(direction)
      )
    )
  }

  /// Applies the specified flex content justification.
  /// - Parameter justification: The justification of the content.
  /// - Returns: The component updated with the justification.
  public func justifyContent(_ justification: Flex.Content.Justification) -> Component {
    rule(.justifyContent(justification))
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
}
