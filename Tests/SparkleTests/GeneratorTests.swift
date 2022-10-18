import XCTest
import SparkleHTML
@testable import Sparkle

final class GeneratorTests: XCTestCase {

  var testDirectory: URL!

  override func setUpWithError() throws {
    testDirectory = try FileManager.default.url(for: .developerDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
  }

  override func tearDownWithError() throws {
    try FileManager.default.removeItem(at: testDirectory.appendingPathComponent("index").appendingPathExtension("html"))
  }

  func testRenderFile() throws {
    let page = ExamplePage()
    let renderer = HTMLRenderer()
    let generator = Generator(content: renderer.render(page))
    try generator.write(file: "index", with: "html", to: testDirectory)
    XCTAssertTrue(FileManager.default.fileExists(atPath: testDirectory.path))
  }
}
