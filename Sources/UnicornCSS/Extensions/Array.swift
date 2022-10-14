import Foundation
import UnicornTools

extension Array: Renderable where Element: Renderable {
  public func render() -> String {
    self
      .map { $0.render() }
      .joined(separator: " ")
  }
}
