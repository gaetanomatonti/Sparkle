import Foundation

extension NumberFormatter {
  /// A number formatter that escapes the floating point.
  ///
  /// The following demonstrates the output of this number formatter:
  /// ```
  /// escapingFloatingPointFormatter.string(for: 0.75) // "0\.75"
  /// ```
  static var escapingFloatingPointFormatter: NumberFormatter {
    let formatter = NumberFormatter()
    formatter.allowsFloats = true
    formatter.minimumFractionDigits = 0
    formatter.maximumFractionDigits = 3
    formatter.decimalSeparator = "."
    return formatter
  }
}
