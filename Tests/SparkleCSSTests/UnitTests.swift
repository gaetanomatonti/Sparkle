import XCTest
@testable import SparkleCSS

final class UnitTests: XCTestCase {
  func testPixelStringRepresentation() {
    XCTAssertEqual(Pixel(16).render(), "16px")
  }

  func testEmStringRepresentation() {
    XCTAssertEqual(EM(0.5).render(), "0.5em")
    XCTAssertEqual(EM(0.75).render(), "0.75em")
    XCTAssertEqual(EM(1.0).render(), "1em")
  }

  func testRemStringRepresentation() {
    XCTAssertEqual(REM(1.25).render(), "1.25rem")
  }

  func testEquatable() {
    XCTAssertEqual(Auto.auto, Auto.auto)
    XCTAssertEqual(Zero.zero, Zero.zero)
    XCTAssertEqual(Pixel(4), Pixel(4))
    XCTAssertEqual(EM(1), EM(1))
    XCTAssertEqual(REM(1), REM(1))
    XCTAssertEqual(Viewport.Height(2), Viewport.Height(2))
    XCTAssertEqual(Viewport.Width(2), Viewport.Width(2))

    XCTAssertNotEqual(Pixel(4), Pixel(8))
    XCTAssertNotEqual(EM(1), EM(2))
    XCTAssertNotEqual(REM(1), REM(2))
    XCTAssertNotEqual(Viewport.Height(2), Viewport.Height(20))
    XCTAssertNotEqual(Viewport.Width(2), Viewport.Width(20))
  }
}
