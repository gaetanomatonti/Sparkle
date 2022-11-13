/// A type that represents a `clamp` function that linearly scales two sizes between a minimum and maximum width.
///
/// Use this function to linearly scale a dimension, for example a font size, between two allowed width dimensions.
/// The following example shows a function that limits the font size to `15px` when the viewport is `768px` wide
/// and to `17px` when the viewport is `1024px` wide, while scaling the value when the viewport width is within the allowed range.
///
/// ```
/// let scale = LinearScale(minimumWidth: 768, maximumWidth: 1024, minimumSize: 15, maximumSize: 17)
/// print(scale.function) // clamp(15px, calc(9px + 0.781vw), 17px)
/// ```
public struct LinearScale {

  // MARK: - Stored Properties

  /// The minimum width.
  let minimumWidth: Pixel

  /// The maximum width.
  let maximumWidth: Pixel

  /// The minimum size.
  let minimumSize: Pixel

  /// The maximum size.
  let maximumSize: Pixel

  // MARK: - Computed Properties

  /// The `clamp` function that linearly scales the value.
  var function: Clamp<Pixel, Calculation<Pixel, Viewport.Width>, Pixel> {
    Clamp(minimumSize, Pixel(intersection) + slopeViewportWidth, maximumSize)
  }

  var slopeViewportWidth: Viewport.Width {
    Viewport.Width(slope * 100)
  }

  var slope: Double {
    (maximumSize.value - minimumSize.value) / (maximumWidth.value - minimumWidth.value)
  }

  var intersection: Double {
    -minimumWidth.value * slope + minimumSize.value
  }

  // MARK: - Init

  /// Creates a `clamp` function that linearly scales two sizes between a minimum and maximum width.
  /// - Parameters:
  ///   - minimumWidth: The minimum width.
  ///   - maximumWidth: The maximum width.
  ///   - minimumSize: The minimum size.
  ///   - maximumSize: The maximum size.
  public init(minimumWidth: Pixel, maximumWidth: Pixel, minimumSize: Pixel, maximumSize: Pixel) {
    self.minimumWidth = minimumWidth
    self.maximumWidth = maximumWidth
    self.minimumSize = minimumSize
    self.maximumSize = maximumSize
  }
}

extension LinearScale: MeasurementValue {
  public var className: String {
    function.className
  }

  public func render() -> String {
    function.render()
  }
}
