import XCTest
import SparkleTools
@testable import SparkleCSS

final class MarginTests: XCTestCase {
  var renderer: StyleSheetRenderer.RuleRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer.RuleRenderer(indentation: Indentation(kind: .spaces(2), allowsNewlines: true))
  }

  func testMarginSingleEdgeRule() {
    let sut = Rule.margin(.left, .rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .margin-left-1rem {
        margin-left: 1rem;
      }
      """
    )
  }

  func testMarginHorizontalEdgesRule() {
    let sut = Rule.margin(.horizontal, .rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .margin-horizontal-1rem {
        margin-left: 1rem;
        margin-right: 1rem;
      }
      """
    )
  }

  func testMarginVerticalEdgesRule() {
    let sut = Rule.margin(.vertical, .rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .margin-vertical-1rem {
        margin-top: 1rem;
        margin-bottom: 1rem;
      }
      """
      )
  }

  func testMarginAllEdgesRule() {
    let sut = Rule.margin(.rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .margin-1rem {
        margin: 1rem;
      }
      """
    )
  }
}
