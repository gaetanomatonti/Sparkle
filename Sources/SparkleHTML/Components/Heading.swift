/// A component that renders a heading element (i.e.: `<h1>`).
public struct Heading: Component {

  // MARK: - Structured Data

  /// The possible levels, or ranks, of the heading.
  public enum Level: Int {
    /// The first level heading.
    case one = 1

    /// The second level heading.
    case two = 2

    /// The thirs level heading.
    case three = 3

    /// The fourth level heading.
    case four = 4

    /// The fifth level heading.
    case five = 5

    /// The sixth level heading.
    case six = 6
  }

  // MARK: - Stored Properties

  /// The level, or rank, of the heading.
  let level: Level

  /// The content of the component.
  let content: Component

  // MARK: - Init

  /// Creates the component and its content from the builder closure.
  /// - Parameter content: The closure that constructs the content.
  public init(level: Level, @ComponentBuilder content: () -> Component) {
    self.level = level
    self.content = content()
  }

  /// Creates the component with a `String` content.
  /// - Parameter content: The `String` to render inside the component.
  public init(level: Level, _ content: String) {
    self.init(level: level) {
      Text(content)
    }
  }

  // MARK: - Body

  public var body: Component {
    Element(name: "h\(level.rawValue)") {
      content
    }
  }
}
