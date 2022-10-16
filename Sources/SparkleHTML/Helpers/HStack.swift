import SparkleCSS

/// A container that stacks content horizontally.
public struct HStack: Component {

  // MARK: - Stored Properties

  /// The spacing applied between the contents.
  let spacing: Unit

  /// The content of the component.
  let content: Component

  // MARK: - Init

  init(spacing: Unit = .pixel(.zero), @ComponentBuilder content: () -> Component) {
    self.spacing = spacing
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
