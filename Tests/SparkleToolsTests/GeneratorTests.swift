import XCTest
@testable import SparkleTools

final class GeneratorTests: XCTestCase {

  var testDirectory: URL!

  override func setUpWithError() throws {
    testDirectory = try FileManager.default.url(for: .developerDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
  }

  override func tearDownWithError() throws {
    try FileManager.default.removeItem(at: testDirectory.appendingPathComponent("index").appendingPathExtension("html"))
  }

  func testRenderFile() throws {
    let generator = FileGenerator(content: "Hello World")
    try generator.write(file: "index", with: "html", to: testDirectory)
    XCTAssertTrue(FileManager.default.fileExists(atPath: testDirectory.path))
  }
}
