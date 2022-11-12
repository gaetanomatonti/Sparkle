/// A type that represents a border.
public struct Border: Value {

  // MARK: - Stored Properties

  /// The width of the border.
  let width: Width

  /// The style of the border.
  let style: Style

  /// The color of the border.
  let color: Color

  // MARK: - Computed Properties

  /// The name of the class that applies the border.
  var className: String {
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

  /// Creates an instance of `Border`.
  /// - Parameters:
  ///   - width: The width of the border expressed in `Unit`.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  public init(width: Unit, style: Style, color: Color) {
    self.width = .unit(width)
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

    public static var defaultValue: Style {
      .none
    }
  }

  /// An enumeration of the possible `Border` widths.
  public enum Width: ValueWithDefaultValue {
    /// A thin border.
    case thin

    /// A medium border.
    case medium

    /// A thick border.
    case thick

    /// A custom border width expressed with `Unit`.
    case unit(Unit)

    public static var defaultValue: Width {
      .medium
    }

    public func render() -> String {
      switch self {
        case .thin:
          return "thin"

        case .medium:
          return "medium"

        case .thick:
          return "thick"

        case let .unit(value):
          return value.render()
      }
    }
  }
}

extension Border.Width: Equatable {
  public static func ==(lhs: Border.Width, rhs: Border.Width) -> Bool {
    switch (lhs, rhs) {
      case (.thin, .thin), (.medium, .medium), (.thick, .thick):
        return true

      case let (.unit(lhsValue), .unit(rhsValue)):
        return lhsValue == rhsValue

      case (.thin, _), (.medium, _), (.thick, _), (.unit, _):
        return false
    }
  }
}
