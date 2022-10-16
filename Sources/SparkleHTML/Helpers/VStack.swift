import SparkleCSS

/// A container that stacks content vertically.
public struct VStack: Component {

  // MARK: - Stored Properties

  /// The spacing applied between the contents.
  let spacing: Unit

  /// The content of the component.
  let content: Component

  // MARK: - Init

  public init(spacing: Unit = .pixel(.zero), @ComponentBuilder content: () -> Component) {
    self.spacing = spacing
    self.content = content()
  }

  // MARK: - Body

  public var body: Component {
    Div {
      content
    }
    .flex(.column)
    .gap(spacing)
  }
}
