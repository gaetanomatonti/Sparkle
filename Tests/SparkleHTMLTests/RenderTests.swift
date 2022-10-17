import XCTest
import SparkleCSS
import SparkleTools
@testable import SparkleHTML

final class RenderTests: XCTestCase {

  var renderer: HTMLRenderer!

  var styleSheetRenderer: StyleSheetRenderer {
    EnvironmentValues.styleSheetRenderer
  }

  override func setUp() {
    renderer = HTMLRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
    EnvironmentValues.styleSheetRenderer = StyleSheetRenderer()
  }

  // MARK: - CSS

  func testComponentStyleSheet() {
    let component = Paragraph {
      Text("Hello World")
    }
    .margin(.pixel(8))

    XCTAssertEqual(renderer.render(component), "<p class=\"margin-8px\">Hello World</p>")
    XCTAssertEqual(styleSheetRenderer.render(), ".margin-8px { margin: 8px; }")
  }

  func testComponentStyleSheetWithMultipleClasses() {
    _ = Paragraph {
      Text("Hello World")
    }
    .margin(.top, .pixel(8))
    .margin(.bottom, .pixel(8))

    XCTAssertEqual(
      styleSheetRenderer.render(),
      """
      .margin-bottom-8px { margin-bottom: 8px; }
      .margin-top-8px { margin-top: 8px; }
      """
    )
  }
}
