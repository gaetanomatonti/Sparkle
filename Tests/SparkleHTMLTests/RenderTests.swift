import XCTest
import SparkleCSS
import SparkleTools
@testable import SparkleHTML

final class RenderTests: XCTestCase {

  var renderer: HTMLRenderer.ComponentRenderer!

  var styleSheetRenderer: StyleSheetRenderer {
    EnvironmentValues.styleSheetRenderer
  }

  override func setUp() {
    renderer = HTMLRenderer.ComponentRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
    EnvironmentValues.styleSheetRenderer = StyleSheetRenderer(indentation: Indentation(kind: .spaces(2), allowsNewlines: true))
  }

  // MARK: - CSS

  func testComponentStyleSheet() {
    let component = Paragraph {
      Text("Hello World")
    }
    .margin(.pixel(8))

    XCTAssertEqual(renderer.render(component), "<p class=\"margin-8px\">Hello World</p>")
    XCTAssertEqual(
      styleSheetRenderer.render(),
      """
      .margin-8px {
        margin: 8px;
      }
      """
    )
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
      .margin-bottom-8px {
        margin-bottom: 8px;
      }

      .margin-top-8px {
        margin-top: 8px;
      }
      """
    )
  }

  func testComponentWithColor() {
    let sut = Paragraph {
      Text("Hello World")
    }
    .foregroundColor(RGB(red: 0, green: 0, blue: 0))

    XCTAssertEqual(renderer.render(sut), "<p class=\"color-r0-g0-b0-a100\">Hello World</p>")
    XCTAssertEqual(
      styleSheetRenderer.render(),
      """
      .color-r0-g0-b0-a100 {
        color: rgba(0, 0, 0, 1.0);
      }
      """
    )
  }

  func testComponentWithIdentifiedColor() {
    let sut = Paragraph {
      Text("Hello World")
    }
    .foregroundColor(SparklePalette.textPrimary)

    XCTAssertEqual(renderer.render(sut), "<p class=\"color-spk-text-primary\">Hello World</p>")
    XCTAssertEqual(
      styleSheetRenderer.render(),
      """
      .color-spk-text-primary {
        color: rgba(0, 0, 0, 1.0);
      }
      """
    )
  }
}
