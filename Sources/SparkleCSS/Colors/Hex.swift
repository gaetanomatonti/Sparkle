import Foundation

/// A color expressed in its hexadecimal value.
public struct Hex: ExpressibleByStringLiteral, Color, BackgroundStyle, ForegroundStyle {

  /// The value of the color.
  let value: String

  // MARK: - Init

  public init(stringLiteral value: StringLiteralType) {
    self.init(value)
  }

  /// Creates a color from its `String` hexadecimal representation.
  /// - Parameter hex: The hexadecimal representation of the color.
  public init(_ hex: String) {
    value = hex
  }

  public var className: String {
    "hex-" + value
  }

  public func render() -> String {
    "#" + value
  }
}
