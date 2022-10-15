import XCTest
@testable import SparkleHTML

final class ElementTests: XCTestCase {
  func testEmptyElement() {
    let sut = Element(name: "head") {

    }

    XCTAssertEqual(sut.render(), "<head></head>")
  }

  func testStandardTag() {
    let sut = Element(
      name: "p",
      attributes: [
        Attribute("class", value: "text-bold")
      ],
      content: "Hello World"
    )

    XCTAssertEqual(sut.render(), "<p class=\"text-bold\">Hello World</p>")
  }

  func testStandardTagWithMultipleAttributes() {
    let sut = Element(
      name: "a",
      attributes: [
        Attribute("class", value: "text-bold"),
        Attribute("href", value: "/hello")
      ],
      content: "Hello World"
    )

    XCTAssertEqual(sut.render(), "<a class=\"text-bold\" href=\"/hello\">Hello World</a>")
  }

  func testSelfClosingTag() {
    let sut = Element(
      name: "meta",
      attributes: [
        Attribute("charset", value: "UTF-8")
      ]
    )

    XCTAssertEqual(sut.render(), "<meta charset=\"UTF-8\">")
  }
}
