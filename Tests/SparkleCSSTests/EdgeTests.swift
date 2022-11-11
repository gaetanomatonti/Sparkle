import XCTest
@testable import SparkleCSS

final class EdgeTests: XCTestCase {
  func testAllEdgeSet() {
    let sut = Edge.Set.all

    XCTAssertTrue(sut.contains(.top))
    XCTAssertTrue(sut.contains(.left))
    XCTAssertTrue(sut.contains(.right))
    XCTAssertTrue(sut.contains(.bottom))
  }

  func testHorizontalEdgeSet() {
    let sut = Edge.Set.horizontal

    XCTAssertTrue(sut.contains(.left))
    XCTAssertTrue(sut.contains(.right))
  }

  func testVerticalEdgeSet() {
    let sut = Edge.Set.vertical

    XCTAssertTrue(sut.contains(.top))
    XCTAssertTrue(sut.contains(.bottom))
  }
}
