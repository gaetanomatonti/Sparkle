import XCTest
@testable import Sparkle

final class RenderTests: XCTestCase {
  func testPage() {
    let sut = ExamplePage()
    XCTAssertEqual(
      sut.render(),
      """
      <!DOCTYPE html>
      <html><head><link href=\"styles.css\" rel=\"stylesheet\"/></head><body><p>Hello World</p></body></html>
      """
    )
  }
}
