import XCTest
import SparkleTools
@testable import SparkleCSS

final class StylesheetRendererTests: XCTestCase {

  var renderer: StyleSheetRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer(indentation: Indentation(kind: .spaces(2), allowsNewlines: true))
  }

  func testInsertMultipleRules() {
    renderer.insert(.textAlignment(.center))

    renderer.insert([
      .textAlignment(.center),
      .margin(.horizontal, .auto)
    ])

    XCTAssertEqual(renderer.rules.count, 2)
    XCTAssertTrue(renderer.rules.contains(.textAlignment(.center)))
    XCTAssertTrue(renderer.rules.contains(.margin(.horizontal, .auto)))
  }
}
