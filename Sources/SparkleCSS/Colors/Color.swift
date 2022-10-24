/// A protocol that defines requirements for types representing a color.
public protocol Color: ForegroundStyle, BackgroundStyle {
  /// The name used to identify the color in the style class.
  var className: String { get }
}

extension Color where Self == Hex {
  /// Creates the the color from a its hexadecimal value.
  /// - Parameter value: The hexadecimal value of the color.
  /// - Returns: The color created from its hexadeciaml value.
  public static func hex(_ value: Hex) -> Hex {
    value
  }
}

extension Color where Self == HSL {
  /// Creates a color with HSL components.
  /// - Parameters:
  ///   - hue: The hue of the color.
  ///   - saturation: The saturation of the color.
  ///   - lightness: The lightness of the color.
  ///   - alpha: The alpha component of the color. Defaults to `1.0`.
  /// - Returns: The color with `RGB` components.
  public static func hsl(hue: Int, saturation: Double, lightness: Double, alpha: Double = 1.0) -> HSL {
    HSL(hue: hue, saturation: saturation, lightness: lightness, alpha: alpha)
  }
}

extension Color where Self == NamedColor {
  /// Creates the the color from a name available in the CSS library.
  /// - Parameter color: The color in the CSS library.
  /// - Returns: The color in the CSS library.
  public static func color(_ color: NamedColor) -> NamedColor {
    color
  }
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
