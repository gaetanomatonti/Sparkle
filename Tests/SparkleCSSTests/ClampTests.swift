import XCTest
@testable import SparkleCSS

final class ClampTests: XCTestCase {
  func testClampRendering() {
    let sut = Clamp(REM(1), REM(2), REM(3))

    XCTAssertEqual(sut.render(), "clamp(1rem, 2rem, 3rem)")
  }

  func testClampWithCalculation() {
    let sut = Clamp(REM(1), Pixel(1) * Viewport.Width(2), REM(3))

    XCTAssertEqual(sut.render(), "clamp(1rem, calc(1px * 2vw), 3rem)")
  }

  func testLinearScale() {
    let sut = LinearScale(minimumWidth: .pixel(768), maximumWidth: .pixel(1024), minimumSize: .pixel(15), maximumSize: .pixel(17))

    XCTAssertEqual(sut.slope, 0.00781, accuracy: 0.001)
    XCTAssertEqual(sut.intersection, 9, accuracy: 0.1)
    XCTAssertEqual(sut.slopeViewportWidth.value, 0.781, accuracy: 0.001)
    XCTAssertEqual(sut.function, Clamp(sut.minimumSize, Pixel(sut.intersection) + Viewport.Width(sut.slope * 100), sut.maximumSize))
  }
}
