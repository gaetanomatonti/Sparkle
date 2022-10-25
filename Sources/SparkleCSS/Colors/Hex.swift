import RegexBuilder

/// A color expressed in its hexadecimal value.
@available(macOS 13.0, *)
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
    let regex = Regex {
      Optionally("#")

      TryCapture {
        Repeat(.hexDigit, count: 2)
      } transform: {
        String($0)
      }

      TryCapture {
        Repeat(.hexDigit, count: 2)
      } transform: {
        String($0)
      }

      TryCapture {
        Repeat(.hexDigit, count: 2)
      } transform: {
        String($0)
      }

      Optionally {
        TryCapture {
          Repeat(.hexDigit, count: 2)
        } transform: {
          String($0)
        }
      }
    }

    guard let (_, red, green, blue, alpha) = hex.wholeMatch(of: regex)?.output else {
      value = "000000"
      return
    }

    value = red + green + blue + (alpha ?? "")
  }

  public var className: String {
    "hex" + value
  }

  public func render() -> String {
    "#" + value
  }
}
