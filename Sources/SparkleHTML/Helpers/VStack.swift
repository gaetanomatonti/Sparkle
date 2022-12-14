import SparkleCSS

/// A container that stacks its content vertically.
public struct VStack<Spacing>: Component where Spacing: MeasurementValue {

  // MARK: - Stored Properties

  /// The spacing applied between the contents.
  let spacing: Spacing

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
    spacing: Spacing = Pixel(.zero),
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
    .flex(.column)
    .gap(spacing)
    .justifyContent(contentJustification)
    .alignContent(contentAlignment)
    .alignItems(itemsAlignment)
  }
}
