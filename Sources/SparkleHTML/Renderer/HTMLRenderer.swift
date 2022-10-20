import SparkleTools

/// An object that renders HTML components.
public struct HTMLRenderer {

  // MARK: - Stored Properties

  /// The indentation configuration for the rendering.
  let indentation: Indentation

  // MARK: - Init

  /// Creates an instance of the HTML renderer.
  /// - Parameter indentation: The indentation to apply to the document. Default to a default instance of `Indentation`.
  public init(indentation: Indentation = Indentation()) {
    self.indentation = indentation
  }

  // MARK: - Functions

  /// Renders the specified `Page` into an HTML `String`.
  /// - Parameters:
  ///   - page: The page to render.
  ///   - indentation: The indentation to apply to the HTML.
  /// - Returns: A `String` of the page's HTML representation.
  @StringBuilder
  public func render(_ page: Page) -> String {
    "<!DOCTYPE html>"

    if indentation.allowsNewlines {
      "\n"
    }

    ElementRenderer(indentation: indentation)
      .render(
        Element(tag: Tag(name: "html", kind: .standard)) {
          page.head

          page.body
        }
      )
  }
}
