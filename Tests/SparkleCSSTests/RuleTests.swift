import XCTest
@testable import SparkleCSS

final class RuleTests: XCTestCase {
  func testMarginRule() {
    let sut = Rule.margin(.pixel(1))
    let expectedResult = ".margin-1px { margin: 1px; }"

    XCTAssertEqual(sut.render(), expectedResult)
  }
}
