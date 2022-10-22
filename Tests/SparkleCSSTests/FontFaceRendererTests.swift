import XCTest
import SparkleTools
@testable import SparkleCSS

final class FontFaceRendererTests: XCTestCase {
  var renderer: StyleSheetRenderer.FontFaceRenderer!

  override func setUp() {
    renderer = StyleSheetRenderer.FontFaceRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
  }

  func testFontFaceRule() {
    let sut = Font.Face(family: .custom("Inter"), source: .url("/Inter.otf"))
    XCTAssertEqual(renderer.render(sut), "@font-face {font-family: \"Inter\";src: url(\"/Inter.otf\");}")
  }
}
