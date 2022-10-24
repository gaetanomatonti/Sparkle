/// A type that reprensets a color expressed through RGB values.
public struct RGB: Color {

  // MARK: - Stored Properties

  /// The red component of the color.
  @Byte var red: Int

  /// The green component of the color.
  @Byte var green: Int

  /// The blue component of the color.
  @Byte var blue: Int

  /// The alpha component of the color.
  @Percentage var alpha: Double = 1

  // MARK: - Computed Properties

  public var className: String {
    "r\(red)-g\(green)-b\(blue)-a\(_alpha.integerValue)"
  }

  // MARK: - Init

  public init(red: Int, green: Int, blue: Int, alpha: Double = 1) {
    self.red = red
    self.green = green
    self.blue = blue
    self.alpha = alpha
  }

  // MARK: - Functions

  public func render() -> String {
    "rgba(\(red), \(green), \(blue), \(alpha))"
  }
}

extension RGB: Equatable {}
