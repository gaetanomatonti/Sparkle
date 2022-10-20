import XCTest
import SparkleHTML
import SparkleTools
@testable import Sparkle

final class RenderTests: XCTestCase {
  var renderer: HTMLRenderer!

  override func setUp() {
    renderer = HTMLRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
  }

  func testPage() {
    let sut = ExamplePage()
    XCTAssertEqual(
      renderer.render(sut),
      """
      <!DOCTYPE html><html><head><link href=\"styles.css\" rel=\"stylesheet\"></head><body><p>Hello World</p></body></html>
      """
    )
  }
}
