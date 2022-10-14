import Foundation
import UnicornTools

extension Array: Renderable where Element: Value {
  public func render() -> String {
    self
      .map { $0.render() }
      .joined(separator: " ")
  }
}

extension Array where Element == Declaration {
  public func render() -> String {
    self
      .map { $0.render() }
      .joined(separator: " ")
  }
}
