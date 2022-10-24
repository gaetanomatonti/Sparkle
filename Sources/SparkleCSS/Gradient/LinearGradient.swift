/// A type that represents a gradient of colors along a straight line.
public struct LinearGradient: ForegroundStyle, BackgroundStyle, BackgroundImage {

  // MARK: - Stored Properties

  /// The angle of the gradients.
  @Degrees var angle: Int

  /// The underlying gradient.
  let gradient: Gradient

  // MARK: - Computed Properties

  public var className: String {
    "linear-\(angle)deg-" + gradient.className
  }

  // MARK: - Init

  /// Creates a linear gradient.
  /// - Parameters:
  ///   - angle: The angle, or direction, of the gradient.
  ///   - gradient: The gradient of colors.
  public init(angle: Int, gradient: Gradient) {
    self.angle = angle
    self.gradient = gradient
  }

  /// Creates a linear gradient.
  /// - Parameters:
  ///   - angle: The angle, or direction, of the gradient.
  ///   - colors: The colors in the gradient.
  public init(angle: Int, colors: [Color]) {
    self.angle = angle
    self.gradient = Gradient(colors: colors)
  }

  /// Creates a linear gradient.
  /// - Parameters:
  ///   - angle: The angle, or direction, of the gradient.
  ///   - stops: The stops in the gradient.
  public init(angle: Int, stops: [Gradient.Stop]) {
    self.angle = angle
    self.gradient = Gradient(stops: stops)
  }

  // MARK: - Functions

  public func render() -> String {
    "linear-gradient(\(angle)deg, \(gradient.render()))"
  }
}
