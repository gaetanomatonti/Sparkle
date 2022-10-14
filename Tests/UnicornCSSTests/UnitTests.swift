import XCTest
@testable import UnicornCSS

final class UnitTests: XCTestCase {
  func testPixelStringRepresentation() {
    XCTAssertEqual(Unit.pixel(16).render(), "16px")
  }

  func testEmStringRepresentation() {
    XCTAssertEqual(Unit.em(0.5).render(), "0.5em")
    XCTAssertEqual(Unit.em(0.75).render(), "0.75em")
    XCTAssertEqual(Unit.em(1.0).render(), "1.0em")
  }

  func testRemStringRepresentation() {
    XCTAssertEqual(Unit.rem(1.25).render(), "1.25rem")
  }
}
