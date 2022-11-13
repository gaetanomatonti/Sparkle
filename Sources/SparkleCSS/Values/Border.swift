/// A type that represents a border.
public struct Border<Width>: Value where Width: MeasurementValue {

  // MARK: - Stored Properties

  /// The width of the border.
  let width: Width

  /// The style of the border.
  let style: Style

  /// The color of the border.
  let color: Color

  // MARK: - Computed Properties

  /// The name of the class that applies the border.
  public var className: String {
    "\(width.render())-\(style.render())-\(color.className)"
  }

  // MARK: - Init

  /// Creates an instance of `Border`.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  public init(width: Width, style: Style, color: Color) {
    self.width = width
    self.style = style
    self.color = color
  }

  public func render() -> String {
    [
      width.render(),
      style.render(),
      color.render()
    ]
    .joined(separator: " ")
  }
}

extension Border {
  /// An enumeration of the possible `Border` styles.
  public enum Style: String, ValueWithDefaultValue {
    /// No border.
    case none

    /// The border is hidden.
    case hidden

    /// A dotted border.
    case dotted

    /// A dashed border.
    case dashed

    /// A solid border.
    case solid

    /// A double border.
    case double

    /// A grooved border.
    case groove

    /// A border with ridge.
    case ridge

    /// An inset border.
    case inset

    /// An outset border.
    case outset

    public var className: String {
      render()
    }

    public static var defaultValue: Style {
      .none
    }
  }
}
