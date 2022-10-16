import XCTest
@testable import SparkleHTML

final class ComponentTests: XCTestCase {
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

  func testBlockquote() {
    let sut = Blockquote {

    }

    XCTAssertEqual(sut.render(), "<blockquote></blockquote>")
  }

  func testListItem() {
    let sut = ListItem {

    }

    XCTAssertEqual(sut.render(), "<li></li>")
  }

  func testList() {
    let items = ["Hello", "World"]
    let sut = List(items) { item in
      Text(item)
    }

    XCTAssertEqual(sut.render(), "<ul><li>Hello</li><li>World</li></ul>")
  }

  func testOrderedList() {
    let items = ["Hello", "World"]
    let sut = OrderedList(items) { item in
      Text(item)
    }

    XCTAssertEqual(sut.render(), "<ol><li>Hello</li><li>World</li></ol>")
  }

  func testMenu() {
    let items = ["Hello", "World"]
    let sut = Menu(items) { item in
      Text(item)
    }

    XCTAssertEqual(sut.render(), "<menu><li>Hello</li><li>World</li></menu>")
  }

  func testHeadingOne() {
    let sut = H1("Hello World")

    XCTAssertEqual(sut.render(), "<h1>Hello World</h1>")
  }

  func testHeadingTwo() {
    let sut = H2 {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h2>Hello World</h2>")
  }

  func testHeadingThree() {
    let sut = H3 {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h3>Hello World</h3>")
  }

  func testHeadingFour() {
    let sut = H4 {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h4>Hello World</h4>")
  }

  func testHeadingFive() {
    let sut = H5 {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h5>Hello World</h5>")
  }

  func testHeadingSix() {
    let sut = H6 {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<h6>Hello World</h6>")
  }

  func testParagraph() {
    let sut = Paragraph("Hello World")

    XCTAssertEqual(sut.render(), "<p>Hello World</p>")
  }

  func testAnchor() {
    let sut = Anchor {

    }

    XCTAssertEqual(sut.render(), "<a></a>")
  }

  func testSpan() {
    let sut = Span {
      Text("Hello World")
    }

    XCTAssertEqual(sut.render(), "<span>Hello World</span>")
  }

  func testAutomaticSpanWrapping() {
    let sut = Paragraph {
      Text("Hello ")

      Text("World")
        .class("text-red")
    }

    XCTAssertEqual(sut.render(), "<p>Hello <span class=\"text-red\">World</span></p>")
  }

  func testImage() {
    let sut = Image()

    XCTAssertEqual(sut.render(), "<img>")
  }

  func testVideo() {
    let sut = Video {

    }

    XCTAssertEqual(sut.render(), "<video></video>")
  }
}
