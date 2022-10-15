import XCTest
@testable import SparkleHTML

final class AttributeTests: XCTestCase {
  func testComponentWithModifier() {
    let sut = Paragraph {
      Text("Hello World")
    }
    .class("text-bold")

    XCTAssertEqual(sut.render(), "<p class=\"text-bold\">Hello World</p>")
  }

  func testNestedComponentWithModifiers() {
    let sut = Div {
      Paragraph {
        Text("Hello World")
      }
      .class("text-bold")
    }
    .class("container", "bg-black")

    XCTAssertEqual(sut.render(), "<div class=\"bg-black container\"><p class=\"text-bold\">Hello World</p></div>")
  }

  // MARK: - Style Tests

  func testComponentWithSingleStyleModifier() {
    let sut = Paragraph {
      Text("Hello World")
    }
    .margin(.pixel(8))

    XCTAssertEqual(sut.render(), "<p class=\"margin-8px\">Hello World</p>")
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

    XCTAssertEqual(sut.render(), "<div class=\"container margin-8px\"><p class=\"margin-4px\">Hello World</p></div>")
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

    XCTAssertEqual(sut.render(), "<div class=\"margin-left-4px margin-top-8px\"><p class=\"margin-4px\">Hello World</p></div>")
  }
}
