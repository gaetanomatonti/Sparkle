import XCTest
import SparkleCSS
import SparkleTools
@testable import SparkleHTML

final class RenderTests: XCTestCase {
  override func setUp() {
    EnvironmentValues.styleSheetRenderer = StyleSheetRenderer()
  }

  // MARK: - CSS

  func testComponentStyleSheet() {
    let component = Paragraph {
      Text("Hello World")
    }
    .margin(.pixel(8))

    XCTAssertEqual(component.render(), "<p class=\"margin-8px\">Hello World</p>")
    XCTAssertEqual(EnvironmentValues.styleSheetRenderer.render(), ".margin-8px { margin: 8px; }")
  }

  func testComponentStyleSheetWithMultipleClasses() {
    _ = Paragraph {
      Text("Hello World")
    }
    .margin(.top, .pixel(8))
    .margin(.bottom, .pixel(8))

    XCTAssertEqual(
      EnvironmentValues.styleSheetRenderer.render(),
      """
      .margin-bottom-8px { margin-bottom: 8px; }
      .margin-top-8px { margin-top: 8px; }
      """
    )
  }
}
