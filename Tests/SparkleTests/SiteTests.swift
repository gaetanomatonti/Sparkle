import XCTest
import SparkleHTML
import SparkleTools
@testable import Sparkle

final class SiteTests: XCTestCase {

  var testDirectory: URL!

  override func setUpWithError() throws {
    testDirectory = try FileManager.default.url(for: .developerDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
  }

  func testCSSRendering() async throws {
    let sut = ExampleSite()

    sut.configureStyleSheet { container in
      await container.import(.string("file.css"))
      await container.insert(.backgroundColor(.color(.white)))
    }

    // The HTML needs to be generated in order for the style rules to be inserted in the `RulesContainer`.
    try sut.generateHTML(with: Indentation(), to: testDirectory)
    try await sut.generateCSS(with: Indentation(), to: testDirectory)

    let resultPath = testDirectory.appendingPathComponent("styles").appendingPathExtension("css")

    XCTAssertTrue(FileManager.default.fileExists(atPath: resultPath.path))
  }
}

struct ExampleSite: Site {
  var homepage: Page {
    ExampleHome()
  }
}

struct ExampleHome: Page {
  public var head: Component {
    Head {
      Link(.rel(.stylesheet), .href("/styles.css"))
    }
  }

  public var body: Component {
    Body {
      H1("Hello World")
        .backgroundColor(.color(.white))
    }
    .backgroundColor(.color(.black))
  }
}
