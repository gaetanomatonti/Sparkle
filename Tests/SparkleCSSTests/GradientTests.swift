import XCTest
@testable import SparkleCSS

final class GradientTests: XCTestCase {
  func testGradientRender() {
    let sut = Gradient(colors: [RGB(red: 255, green: 0, blue: 0), RGB(red: 0, green: 0, blue: 255)])

    XCTAssertEqual(sut.render(), "rgba(255, 0, 0, 1.0) 0%, rgba(0, 0, 255, 1.0) 100%")
  }

  func testLinearGradientRender() {
    let sut = LinearGradient(angle: 90, colors: [RGB(red: 255, green: 0, blue: 0), RGB(red: 0, green: 0, blue: 255)])

    XCTAssertEqual(sut.render(), "linear-gradient(90deg, rgba(255, 0, 0, 1.0) 0%, rgba(0, 0, 255, 1.0) 100%)")
  }
}
