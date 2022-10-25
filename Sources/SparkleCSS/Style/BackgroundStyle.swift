/// A protocol that describes requirements for a style that can be applied to the background of an element.
public protocol BackgroundStyle: Value {
  /// The name of the class.
  var className: String { get }
}

@available(macOS 13.0, *)
extension BackgroundStyle where Self == Hex {
  /// Creates the the color from a its hexadecimal value.
  /// - Parameter value: The hexadecimal value of the color.
  /// - Returns: The color created from its hexadeciaml value.
  public static func hex(_ value: Hex) -> Hex {
    value
  }
}

extension BackgroundStyle where Self == HSL {
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

extension BackgroundStyle where Self == NamedColor {
  /// Creates the the color from a name available in the CSS library.
  /// - Parameter color: The color in the CSS library.
  /// - Returns: The color in the CSS library-
  public static func color(_ color: NamedColor) -> NamedColor {
    color
  }
}

extension BackgroundStyle where Self == RGB {
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

extension BackgroundStyle where Self == LinearGradient {
  /// Creates a linear gradient.
  /// - Parameters:
  ///   - angle: The angle that sets the direction of the gradient.
  ///   - stops: The stops of the gradient.
  /// - Returns: A `LinearGradient` to apply as the foreground.
  public static func linearGradient(angle: Int, stops: [Gradient.Stop]) -> LinearGradient {
    LinearGradient(angle: angle, stops: stops)
  }

  /// Creates a linear gradient.
  /// - Parameters:
  ///   - angle: The angle that sets the direction of the gradient.
  ///   - colors: The colors of the gradient.
  /// - Returns: A `LinearGradient` to apply as the foreground.
  public static func linearGradient(angle: Int, colors: [Color]) -> LinearGradient {
    LinearGradient(angle: angle, colors: colors)
  }

  /// Creates a linear gradient.
  /// - Parameters:
  ///   - angle: The angle that sets the direction of the gradient.
  ///   - gradient: The gradient.
  /// - Returns: A `LinearGradient` to apply as the foreground.
  public static func linearGradient(angle: Int, gradient: Gradient) -> LinearGradient {
    LinearGradient(angle: angle, gradient: gradient)
  }
}
