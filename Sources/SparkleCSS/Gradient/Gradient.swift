/// A type that represents a gradient of colors.
public struct Gradient: ForegroundStyle, BackgroundStyle {

  // MARK: - Stored Properties

  /// The stops of the gradient.
  let stops: [Stop]

  // MARK: - Computed Properties

  public var className: String {
    stops.map { stop in
      stop.className
    }
    .joined(separator: "-")
  }

  // MARK: - Init

  /// Creates a gradient by specifying its stops.
  /// - Parameter stops: The stops in the gradient.
  public init(stops: [Stop]) {
    self.stops = stops
  }

  /// Creates a gradient by specifying its colors. Colors will be equally spaced in the gradient.
  /// - Parameter colors: The colors in the gradient.
  public init(colors: [Color]) {
    self.stops = colors.enumerated().map { index, color in
      guard index > .zero else {
        return Stop(color: color, location: 0)
      }

      return Stop(color: color, location: Double(index) / Double(colors.count - 1))
    }
  }

  // MARK: - Functions

  public func render() -> String {
    stops.map { stop in
      stop.render()
    }
    .joined(separator: ", ")
  }
}

extension Gradient {
  /// A type that represents a stop in a gradient.
  public struct Stop: Value {

    // MARK: - Stored Properties

    /// The color of the stop.
    let color: Color

    /// The location of the color in the gradient, express in percentage.
    @Percentage var location: Double

    // MARK: - Computed Properties

    var className: String {
      color.className + "-" + _location.stringRepresentation
    }

    // MARK: - Init

    /// Creates a gradient stop.
    /// - Parameters:
    ///   - color: The color of the stop.
    ///   - location: The location of the color in the gradient, expressed in percentage.
    public init(color: Color, location: Double) {
      self.color = color
      self.location = location
    }

    // MARK: - Functions

    public func render() -> String {
      color.render() + " " + _location.stringRepresentation
    }
  }
}
