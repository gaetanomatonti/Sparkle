import XCTest
@testable import SparkleCSS

final class UnitTests: XCTestCase {
  func testPixelStringRepresentation() {
    XCTAssertEqual(Unit.pixel(16).render(), "16px")
  }

  func testEmStringRepresentation() {
    XCTAssertEqual(Unit.em(0.5).render(), "0.5em")
    XCTAssertEqual(Unit.em(0.75).render(), "0.75em")
    XCTAssertEqual(Unit.em(1.0).render(), "1em")
  }

  func testRemStringRepresentation() {
    XCTAssertEqual(Unit.rem(1.25).render(), "1.25rem")
  }

  func testEquatable() {
    XCTAssertEqual(Unit.auto, Unit.auto)
    XCTAssertEqual(Unit.zero, Unit.zero)
    XCTAssertEqual(Unit.pixel(4), Unit.pixel(4))
    XCTAssertEqual(Unit.em(1), Unit.em(1))
    XCTAssertEqual(Unit.rem(1), Unit.rem(1))
    XCTAssertEqual(Unit.vh(2), Unit.vh(2))
    XCTAssertEqual(Unit.vw(2), Unit.vw(2))

    XCTAssertNotEqual(Unit.auto, Unit.zero)
    XCTAssertNotEqual(Unit.pixel(4), Unit.pixel(8))
    XCTAssertNotEqual(Unit.pixel(4), Unit.em(2))
    XCTAssertNotEqual(Unit.em(1), Unit.rem(1))
    XCTAssertNotEqual(Unit.rem(1), Unit.rem(2))
    XCTAssertNotEqual(Unit.vh(2), Unit.vw(2))
  }
}
