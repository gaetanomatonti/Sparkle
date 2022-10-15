import Foundation
import SparkleTools

extension Array: Renderable where Element: Renderable {
  public func render() -> String {
    self
      .map { $0.render() }
      .joined(separator: " ")
  }
}
