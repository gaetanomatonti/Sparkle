import XCTest
import SparkleTools
@testable import SparkleHTML

final class ComponentTests: XCTestCase {
  var renderer: HTMLRenderer.ComponentRenderer!

  override func setUp() {
    renderer = HTMLRenderer.ComponentRenderer(indentation: Indentation(kind: .none, allowsNewlines: false))
  }

  func testText() {
    let sut = Text("Hello World")

    XCTAssertEqual(renderer.render(sut), "Hello World")
  }

  func testHead() {
    let sut = Head {

    }

    XCTAssertEqual(renderer.render(sut), "<head></head>")
  }

  func testTitle() {
    let sut = Title("MyWebsite")

    XCTAssertEqual(renderer.render(sut), "<title>MyWebsite</title>")
  }

  func testLink() {
    let sut = Link()

    XCTAssertEqual(renderer.render(sut), "<link>")
  }

  func testMeta() {
    let sut = Meta()

    XCTAssertEqual(renderer.render(sut), "<meta>")
  }

  func testScript() {
    let sut = Script {
      "console.log('hello world')"
    }

    XCTAssertEqual(renderer.render(sut), "<script>console.log('hello world')</script>")
  }

  func testDiv() {
    let sut = Div {

    }

    XCTAssertEqual(renderer.render(sut), "<div></div>")
  }

  func testArticle() {
    let sut = Article {

    }

    XCTAssertEqual(renderer.render(sut), "<article></article>")
  }

  func testHeader() {
    let sut = Header {

    }

    XCTAssertEqual(renderer.render(sut), "<header></header>")
  }

  func testFooter() {
    let sut = Footer {

    }

    XCTAssertEqual(renderer.render(sut), "<footer></footer>")
  }

  func testNavigation() {
    let sut = Navigation {

    }

    XCTAssertEqual(renderer.render(sut), "<nav></nav>")
  }

  func testSection() {
    let sut = Section {

    }

    XCTAssertEqual(renderer.render(sut), "<section></section>")
  }

  func testAside() {
    let sut = Aside {

    }

    XCTAssertEqual(renderer.render(sut), "<aside></aside>")
  }

  func testMain() {
    let sut = Main {

    }

    XCTAssertEqual(renderer.render(sut), "<main></main>")
  }

  func testBlockquote() {
    let sut = Blockquote {

    }

    XCTAssertEqual(renderer.render(sut), "<blockquote></blockquote>")
  }

  func testListItem() {
    let sut = ListItem {

    }

    XCTAssertEqual(renderer.render(sut), "<li></li>")
  }

  func testList() {
    let items = ["Hello", "World"]
    let sut = List(items) { item in
      Text(item)
    }

    XCTAssertEqual(renderer.render(sut), "<ul><li>Hello</li><li>World</li></ul>")
  }

  func testOrderedList() {
    let items = ["Hello", "World"]
    let sut = OrderedList(items) { item in
      Text(item)
    }

    XCTAssertEqual(renderer.render(sut), "<ol><li>Hello</li><li>World</li></ol>")
  }

  func testMenu() {
    let items = ["Hello", "World"]
    let sut = Menu(items) { item in
      Text(item)
    }

    XCTAssertEqual(renderer.render(sut), "<menu><li>Hello</li><li>World</li></menu>")
  }

  func testHeadingOne() {
    let sut = H1("Hello World")

    XCTAssertEqual(renderer.render(sut), "<h1>Hello World</h1>")
  }

  func testHeadingTwo() {
    let sut = H2 {
      Text("Hello World")
    }

    XCTAssertEqual(renderer.render(sut), "<h2>Hello World</h2>")
  }

  func testHeadingThree() {
    let sut = H3 {
      Text("Hello World")
    }

    XCTAssertEqual(renderer.render(sut), "<h3>Hello World</h3>")
  }

  func testHeadingFour() {
    let sut = H4 {
      Text("Hello World")
    }

    XCTAssertEqual(renderer.render(sut), "<h4>Hello World</h4>")
  }

  func testHeadingFive() {
    let sut = H5 {
      Text("Hello World")
    }

    XCTAssertEqual(renderer.render(sut), "<h5>Hello World</h5>")
  }

  func testHeadingSix() {
    let sut = H6 {
      Text("Hello World")
    }

    XCTAssertEqual(renderer.render(sut), "<h6>Hello World</h6>")
  }

  func testParagraph() {
    let sut = Paragraph("Hello World")

    XCTAssertEqual(renderer.render(sut), "<p>Hello World</p>")
  }

  func testAnchor() {
    let sut = Anchor {

    }

    XCTAssertEqual(renderer.render(sut), "<a></a>")
  }

  func testSpan() {
    let sut = Span {
      Text("Hello World")
    }

    XCTAssertEqual(renderer.render(sut), "<span>Hello World</span>")
  }

  func testAutomaticSpanWrapping() {
    let sut = Paragraph {
      Text("Hello ")

      Text("World")
        .class("text-red")
    }

    XCTAssertEqual(renderer.render(sut), "<p>Hello <span class=\"text-red\">World</span></p>")
  }

  func testImage() {
    let sut = Image()

    XCTAssertEqual(renderer.render(sut), "<img>")
  }

  func testVideo() {
    let sut = Video {

    }

    XCTAssertEqual(renderer.render(sut), "<video></video>")
  }

  // MARK: Helpers

  func testHStack() {
    let sut = HStack {

    }
    .class("margin-0")

    XCTAssertEqual(renderer.render(sut), "<div class=\"content-normal flex-row gap-0px items-stretch justify-flex-start margin-0\"></div>")
  }
}
