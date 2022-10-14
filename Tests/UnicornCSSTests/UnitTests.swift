import XCTest
@testable import UnicornCSS

final class UnitTests: XCTestCase {
  func testPixelStringRepresentation() {
    let sut = Unit.pixel(16)
    XCTAssertEqual(sut.render(), "16px")
  }

  func testEmStringRepresentation() {
    let sut = Unit.em(1.25)
    XCTAssertEqual(sut.render(), "1.25em")
  }

  func testRemStringRepresentation() {
    let sut = Unit.rem(1.25)
    XCTAssertEqual(sut.render(), "1.25rem")
  }
}
