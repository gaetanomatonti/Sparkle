import XCTest
import SparkleTools
@testable import SparkleCSS

final class PaddingTests: XCTestCase {
  var renderer: StyleSheetRenderer.RuleRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer.RuleRenderer(indentation: Indentation(kind: .spaces(2), allowsNewlines: true))
  }

  func testPaddingSingleEdgeRule() {
    let sut = Rule.padding(.left, .rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .padding-left-1rem {
        padding-left: 1rem;
      }
      """
    )
  }

  func testPaddingHorizontalEdgesRule() {
    let sut = Rule.padding(.horizontal, .rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .padding-horizontal-1rem {
        padding-left: 1rem;
        padding-right: 1rem;
      }
      """
    )
  }

  func testPaddingVerticalEdgesRule() {
    let sut = Rule.padding(.vertical, .rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .padding-vertical-1rem {
        padding-top: 1rem;
        padding-bottom: 1rem;
      }
      """
      )
  }

  func testPaddingAllEdgesRule() {
    let sut = Rule.padding(.rem(1))

    XCTAssertEqual(
      renderer.render(sut),
      """
      .padding-1rem {
        padding: 1rem;
      }
      """
    )
  }
}
