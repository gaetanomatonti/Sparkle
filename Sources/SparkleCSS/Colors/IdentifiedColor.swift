/// A wrapper that identifies a color value. Useful to improve the naming of colors in the stylesheet.
struct IdentifiedColor: Color {

  // MARK: - Stored Properties

  /// The name that identifies the color.
  let name: String

  /// The value of the color that is being identified.
  let value: Color

  // MARK: - Computed Properties

  var className: String {
    name
  }

  func render() -> String {
    value.render()
  }
}

extension Color {
  /// Applies an identifier to a color. Allows for color semantics and improved naming in the stylsheet.
  /// - Parameter identifier: The identifier that identifies the color.
  /// - Returns: A `Color` that is identified by an identifier.
  public func identifier(_ identifier: String) -> Color {
    IdentifiedColor(name: identifier, value: self)
  }
}
