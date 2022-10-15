import XCTest
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
    let generator = Generator(content: page.render())
    try generator.write(file: "index", with: "html", to: testDirectory)
    XCTAssertTrue(FileManager.default.fileExists(atPath: testDirectory.path))
  }
}
