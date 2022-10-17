import XCTest
import SparkleTools
@testable import SparkleHTML

final class AttributeTests: XCTestCase {
  var renderer: HTMLRenderer!

  override func setUp() {
    renderer = HTMLRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
  }

  func testValuelessAttribute() {
    let sut = Script(.defer, .src("main.js"))

    XCTAssertEqual(renderer.render(sut), "<script defer src=\"main.js\"></script>")
  }

  func testComponentWithModifier() {
    let sut = Paragraph {
      Text("Hello World")
    }
    .class("text-bold")

    XCTAssertEqual(renderer.render(sut), "<p class=\"text-bold\">Hello World</p>")
  }

  func testNestedComponentWithModifiers() {
    let sut = Div {
      Paragraph {
        Text("Hello World")
      }
      .class("text-bold")
    }
    .class("container", "bg-black")

    XCTAssertEqual(renderer.render(sut), "<div class=\"bg-black container\"><p class=\"text-bold\">Hello World</p></div>")
  }

  // MARK: - Style Tests

  func testComponentWithSingleStyleModifier() {
    let sut = Paragraph {
      Text("Hello World")
    }
    .margin(.pixel(8))

    XCTAssertEqual(renderer.render(sut), "<p class=\"margin-8px\">Hello World</p>")
  }

  func testComponentWithMixedModifiers() {
    let sut = Div {
      Paragraph {
        Text("Hello World")
      }
      .margin(.pixel(4))
    }
    .class("container")
    .margin(.pixel(8))

    XCTAssertEqual(renderer.render(sut), "<div class=\"container margin-8px\"><p class=\"margin-4px\">Hello World</p></div>")
  }

  func testComponentWithMultipleStyleModifiers() {
    let sut = Div {
      Paragraph {
        Text("Hello World")
      }
      .margin(.pixel(4))
    }
    .margin(.top, .pixel(8))
    .margin(.left, .pixel(4))

    XCTAssertEqual(renderer.render(sut), "<div class=\"margin-left-4px margin-top-8px\"><p class=\"margin-4px\">Hello World</p></div>")
  }
}
