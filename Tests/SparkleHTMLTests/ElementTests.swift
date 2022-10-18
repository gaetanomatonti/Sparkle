import XCTest
import SparkleTools
@testable import SparkleHTML

final class ElementTests: XCTestCase {
  var renderer: HTMLRenderer.ElementRenderer!

  override func setUp() {
    renderer = HTMLRenderer.ElementRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
  }

  func testEmptyElement() {
    let sut = Element(name: "head") {

    }

    XCTAssertEqual(renderer.render(sut), "<head></head>")
  }

  func testStandardTag() {
    let sut = Element(
      name: "p",
      attributes: [
        Attribute("class", value: "text-bold")
      ],
      content: Text("Hello World")
    )

    XCTAssertEqual(renderer.render(sut), "<p class=\"text-bold\">Hello World</p>")
  }

  func testStandardTagWithMultipleAttributes() {
    let sut = Element(
      name: "a",
      attributes: [
        Attribute("class", value: "text-bold"),
        Attribute("href", value: "/hello")
      ],
      content: Text("Hello World")
    )

    XCTAssertEqual(renderer.render(sut), "<a class=\"text-bold\" href=\"/hello\">Hello World</a>")
  }

  func testSelfClosingTag() {
    let sut = Element(
      name: "meta",
      attributes: [
        Attribute("charset", value: "UTF-8")
      ]
    )

    XCTAssertEqual(renderer.render(sut), "<meta charset=\"UTF-8\">")
  }
}
