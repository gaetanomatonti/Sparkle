import XCTest
@testable import SparkleCSS

final class CalculationTests: XCTestCase {
  func testSum() {
    let sut = REM(1) + Pixel(4)

    XCTAssertEqual(sut.render(), "calc(1rem + 4px)")
  }

  func testSubtraction() {
    let sut = REM(1) - Pixel(4)

    XCTAssertEqual(sut.render(), "calc(1rem - 4px)")
  }

  func testMultiplication() {
    let sut = REM(1) * Pixel(4)

    XCTAssertEqual(sut.render(), "calc(1rem * 4px)")
  }

  func testDivision() {
    let sut = REM(1) / Pixel(4)

    XCTAssertEqual(sut.render(), "calc(1rem / 4px)")
  }
}
