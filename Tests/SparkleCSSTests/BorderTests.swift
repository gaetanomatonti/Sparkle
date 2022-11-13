import XCTest
import SparkleTools
@testable import SparkleCSS

final class BorderTests: XCTestCase {
  var renderer: StyleSheetRenderer.RuleRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer.RuleRenderer(indentation: Indentation(kind: .spaces(2), allowsNewlines: true))
  }

  func testBorderRendering() {
    let sut = Border(width: .pixel(1), style: .solid, color: NamedColor.red)

    XCTAssertEqual(sut.render(), "1px solid red")
  }

  func testBorderRule() {
    let sut = Rule.border(width: .pixel(1), style: .solid, color: NamedColor.red)

    XCTAssertEqual(
      renderer.render(sut),
      """
      .border-1px-solid-red {
        border: 1px solid red;
      }
      """
    )
  }
}
