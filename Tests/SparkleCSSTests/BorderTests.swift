import XCTest
import SparkleTools
@testable import SparkleCSS

final class BorderTests: XCTestCase {
  var renderer: StyleSheetRenderer.RuleRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer.RuleRenderer(indentation: Indentation(kind: .spaces(2), allowsNewlines: true))
  }

  func testBorderRendering() {
    let sut = Border(width: .medium, style: .solid, color: NamedColor.red)

    XCTAssertEqual(sut.render(), "medium solid red")
  }

  func testBorderRule() {
    let sut = Rule.border(width: .medium, style: .solid, color: NamedColor.red)

    XCTAssertEqual(
      renderer.render(sut),
      """
      .border-medium-solid-red {
        border: medium solid red;
      }
      """
    )
  }
}
