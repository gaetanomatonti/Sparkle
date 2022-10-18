/// A type that reprensets a color expressed through HSL values.
struct HSL: Color {

  // MARK: - Stored Properties

  /// The hue component of the color.
  @Degrees var hue: Int

  /// The saturation component of the color.
  @Percentage var saturation: Double

  /// The lightness component of the color.
  @Percentage var lightness: Double

  /// The alpha component of the color.
  @Percentage var alpha: Double = 1

  // MARK: - Functions

  func render() -> String {
    "hsla(\(hue), \(saturation), \(lightness), \(alpha))"
  }
}
