import XCTest
@testable import SparkleCSS

final class BorderTests: XCTestCase {
  func testBorderRendering() {
    let sut = Border(width: .medium, style: .solid, color: NamedColor.red)

    XCTAssertEqual(sut.render(), "medium solid red")
  }
}
