/// A type that reprensets a color expressed through HSL values.
public struct HSL: Color {

  // MARK: - Stored Properties

  /// The hue component of the color.
  @Degrees public var hue: Int

  /// The saturation component of the color.
  @Percentage public var saturation: Double

  /// The lightness component of the color.
  @Percentage public var lightness: Double

  /// The alpha component of the color.
  @Percentage public var alpha: Double = 1

  // MARK: - Init

  public init(hue: Int, saturation: Double, lightness: Double, alpha: Double = 1) {
    self.hue = hue
    self.saturation = saturation
    self.lightness = lightness
    self.alpha = alpha
  }

  // MARK: - Functions

  public var className: String {
    "h\(hue)-s\(_saturation.integerValue)-l\(_lightness.integerValue)-a\(_alpha.integerValue)"
  }

  public func render() -> String {
    "hsla(\(hue), \(saturation), \(lightness), \(alpha))"
  }
}
