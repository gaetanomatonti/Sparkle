import XCTest
import SparkleTools
@testable import SparkleCSS

final class RuleTests: XCTestCase {

  var renderer: StyleSheetRenderer.RuleRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer.RuleRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
  }

  func testMarginRule() {
    let sut = Rule.margin(.pixel(1))
    let expectedResult = ".margin-1px { margin: 1px; }"

    XCTAssertEqual(renderer.render(sut), expectedResult)
  }

  func testSelectorRendering() {
    XCTAssertEqual(
      renderer.render(Rule.margin(.rem(1.25))),
      ".margin-1\\.25rem { margin: 1.25rem; }"
    )
    XCTAssertEqual(
      renderer.render(Rule(.identifier("test"), declarations: .margin(.zero))),
      "#test { margin: 0; }"
    )
    XCTAssertEqual(
      renderer.render(Rule(.element("h1"), declarations: .margin(.zero))),
      "h1 { margin: 0; }"
    )
    XCTAssertEqual(
      renderer.render(Rule(.universal, declarations: .margin(.zero))),
      "* { margin: 0; }"
    )
  }

  func testSelectorSorting() {
    let sut: [Rule.Selector] = [
      .identifier("container"),
      .class("text-red"),
      .element("h1"),
      .class("text-green"),
      .element("p"),
      .identifier("button"),
      .universal
    ]
    XCTAssertEqual(
      sut.sorted(),
      [
        .universal,
        .element("h1"),
        .element("p"),
        .identifier("button"),
        .identifier("container"),
        .class("text-green"),
        .class("text-red")
      ]
    )
  }
}
