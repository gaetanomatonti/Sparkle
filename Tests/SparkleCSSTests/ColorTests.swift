import XCTest
@testable import SparkleCSS

final class ColorTests: XCTestCase {
  func testRGB() {
    let sut = RGB(red: 255, green: 255, blue: 255)
    XCTAssertEqual(sut.render(), "rgba(255, 255, 255, 1.0)")
  }

  func testRGBWithOverflowValue() {
    let sut = RGB(red: 300, green: 255, blue: 255, alpha: 120%)
    XCTAssertEqual(sut.render(), "rgba(255, 255, 255, 1.0)")
  }

  func testHSL() {
    let sut = HSL(hue: 360, saturation: 100%, lightness: 100%)
    XCTAssertEqual(sut.render(), "hsla(360, 1.0, 1.0, 1.0)")
  }

  func testHSLWithOverflowValue() {
    let sut = HSL(hue: 400, saturation: 100%, lightness: 100%)
    XCTAssertEqual(sut.render(), "hsla(360, 1.0, 1.0, 1.0)")
  }

  func testHexRegex() throws {
    guard #available(macOS 13.0, *) else {
      XCTAssertTrue(true)
      return
    }

    let sut = "#FFFFFF"

    XCTAssertEqual(Hex(sut).value, "FFFFFF")
  }
}
