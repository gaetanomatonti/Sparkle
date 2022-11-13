import XCTest
@testable import SparkleCSS

final class ClampTests: XCTestCase {
  func testClampRendering() {
    let sut = Clamp(REM(1), REM(2), REM(3))

    XCTAssertEqual(sut.render(), "clamp(1rem, 2rem, 3rem)")
  }

  func testClampWithCalculation() {
    let sut = Clamp(REM(1), REM(1) * REM(2), REM(3))

    XCTAssertEqual(sut.render(), "clamp(1rem, calc(1rem * 2rem), 3rem)")
  }
}
