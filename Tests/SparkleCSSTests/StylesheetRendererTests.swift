import XCTest
import SparkleTools
@testable import SparkleCSS

final class StylesheetRendererTests: XCTestCase {

  var container: RulesContainer!

  override func setUp() {
    container = RulesContainer()
  }

  func testInsertMultipleRules() async {
    await container.insert(.textAlignment(.center))

    await container.insert([
      .textAlignment(.center),
      .margin(.horizontal, .auto)
    ])

    let rules = await container.rules

    XCTAssertEqual(rules.count, 2)
    XCTAssertTrue(rules.contains(.textAlignment(.center)))
    XCTAssertTrue(rules.contains(.margin(.horizontal, .auto)))
  }
}
