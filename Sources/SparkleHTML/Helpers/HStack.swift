import SparkleCSS

/// A container that stacks content horizontally.
public struct HStack: Component {

  // MARK: - Stored Properties

  /// The spacing applied between the contents.
  let spacing: Unit

  /// The justification of the content.
  let contentJustification: Flex.Content.Justification

  /// The alignment of the content.
  let contentAlignment: Flex.Content.Alignment

  /// The alignment of the items.
  let itemsAlignment: Flex.Item.Alignment

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates a container where items are stacked horizontally.
  /// - Parameters:
  ///   - spacing: The spacing applied between the contents.
  ///   - justifyContent: The justification of the content.
  ///   - alignContent: The alignment of the content.
  ///   - alignItems: The alignment of the items.
  ///   - content: The content of the component.
  public init(
    spacing: Unit = .pixel(.zero),
    justifyContent: Flex.Content.Justification = .defaultValue,
    alignContent: Flex.Content.Alignment = .defaultValue,
    alignItems: Flex.Item.Alignment = .defaultValue,
    @ComponentBuilder content: () -> Component
  ) {
    self.spacing = spacing
    self.contentJustification = justifyContent
    self.contentAlignment = alignContent
    self.itemsAlignment = alignItems
    self.content = content()
  }

  // MARK: - Body

  public var body: Component {
    Div {
      content
    }
    .flex(.row)
    .gap(spacing)
  }
}
