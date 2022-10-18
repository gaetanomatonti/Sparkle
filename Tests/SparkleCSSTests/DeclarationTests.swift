import XCTest
import SparkleTools
@testable import SparkleCSS

final class DeclarationTests: XCTestCase {

  var renderer: StyleSheetRenderer.DeclarationRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer.DeclarationRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
  }

  func testMarginDeclaration() {
    let sut = Declaration.margin(.pixel(4))
    let expectedResult = "margin: 4px;"

    XCTAssertEqual(renderer.render(sut), expectedResult)
  }

  func testMarginAllEdgesDeclaration() {
    let sut = Declaration.margin(top: .pixel(4), right: .pixel(8), bottom: .pixel(4), left: .pixel(8))
    let expectedResult = "margin: 4px 8px 4px 8px;"

    XCTAssertEqual(renderer.render(sut), expectedResult)
  }

  func testMarginAxisDeclaration() {
    let sut = Declaration.margin(vertical: .pixel(4), horizontal: .pixel(8))
    let expectedResult = "margin: 4px 8px;"

    XCTAssertEqual(renderer.render(sut), expectedResult)
  }

  func testMarginEdgeDeclaration() {
    let sut = Declaration.margin(.top, .pixel(4))
    let expectedResult = "margin-top: 4px;"

    XCTAssertEqual(renderer.render(sut), expectedResult)
  }
}
