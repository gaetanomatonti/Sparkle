/// A protocol that defines requirements for types representing a color.
public protocol Color: ForegroundStyle, BackgroundStyle {
  /// The name used to identify the color in the style class.
  var className: String { get }
}

extension Color where Self == RGB {
  /// Creates a color with RGB components.
  /// - Parameters:
  ///   - red: The red component of the color.
  ///   - green: The green component of the color.
  ///   - blue: The blue component of the color.
  ///   - alpha: The alpha component of the color. Defaults to `1.0`.
  /// - Returns: The color with `RGB` components.
  public static func rgb(red: Int, green: Int, blue: Int, alpha: Double = 1.0) -> RGB {
    RGB(red: red, green: green, blue: blue, alpha: alpha)
  }
}

extension Color where Self == NamedColor {
  /// Creates the the color from a name available in the CSS library.
  /// - Parameter color: The color in the CSS library.
  /// - Returns: The color in the CSS library-
  public static func color(_ color: NamedColor) -> NamedColor {
    color
  }
}
