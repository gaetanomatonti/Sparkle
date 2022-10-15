import XCTest
import SparkleCSS
import SparkleTools
@testable import SparkleHTML

final class RenderTests: XCTestCase {

  override func setUp() {
    EnvironmentValues.styleSheetRenderer = Renderer()
  }

  // MARK: - Element Tests

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

  // MARK: - Component Tests

  func testText() {
    let sut = Text("Hello World")

    XCTAssertEqual(sut.render(), "Hello World")
  }

  func testHead() {
    let sut = Head {

    }

    XCTAssertEqual(sut.render(), "<head></head>")
  }

  func testTitle() {
    let sut = Title {
      "MyWebsite"
    }

    XCTAssertEqual(sut.render(), "<title>MyWebsite</title>")
  }

  func testLink() {
    let sut = Link()

    XCTAssertEqual(sut.render(), "<link>")
  }

  func testMeta() {
    let sut = Meta()

    XCTAssertEqual(sut.render(), "<meta>")
  }

  func testScript() {
    let sut = Script {
      "console.log('hello world')"
    }

    XCTAssertEqual(sut.render(), "<script>console.log('hello world')</script>")
  }

  func testHeadingOne() {
    let sut = Heading(level: .one) {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h1>Hello World</h1>")
  }

  func testHeadingTwo() {
    let sut = Heading(level: .two) {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h2>Hello World</h2>")
  }

  func testHeadingThree() {
    let sut = Heading(level: .three) {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h3>Hello World</h3>")
  }

  func testHeadingFour() {
    let sut = Heading(level: .four) {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h4>Hello World</h4>")
  }

  func testHeadingFive() {
    let sut = Heading(level: .five) {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h5>Hello World</h5>")
  }

  func testHeadingSix() {
    let sut = Heading(level: .six) {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h6>Hello World</h6>")
  }

  func testParagraph() {
    let sut = Paragraph("Hello World")
    
    XCTAssertEqual(sut.render(), "<p>Hello World</p>")
  }

  func testDiv() {
    let sut = Div {

    }

    XCTAssertEqual(sut.render(), "<div></div>")
  }

  func testArticle() {
    let sut = Article {

    }

    XCTAssertEqual(sut.render(), "<article></article>")
  }

  func testHeader() {
    let sut = Header {

    }

    XCTAssertEqual(sut.render(), "<header></header>")
  }

  func testFooter() {
    let sut = Footer {

    }

    XCTAssertEqual(sut.render(), "<footer></footer>")
  }

  func testNavigation() {
    let sut = Navigation {

    }

    XCTAssertEqual(sut.render(), "<nav></nav>")
  }

  func testSection() {
    let sut = Section {

    }

    XCTAssertEqual(sut.render(), "<section></section>")
  }

  func testAside() {
    let sut = Aside {

    }

    XCTAssertEqual(sut.render(), "<aside></aside>")
  }

  func testMain() {
    let sut = Main {

    }

    XCTAssertEqual(sut.render(), "<main></main>")
  }

  // MARK: - Attribute Tests

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

  // MARK: - CSS

  func testComponentStyleSheet() {
    _ = Paragraph {
      Text("Hello World")
    }
    .margin(.pixel(8))

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
