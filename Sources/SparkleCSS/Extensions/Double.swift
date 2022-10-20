import Foundation

extension Double {
  /// A `String` representing a `Double` with escaped floating point.
  var escapedFloatingPoint: String {
    NumberFormatter.escapingFloatingPointFormatter.string(for: self) ?? "0"
  }
}
