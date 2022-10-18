import SparkleTools

extension StyleSheetRenderer {
  /// An object that renders a CSS import statement.
  struct ImportRenderer {

    // MARK: - Stored Properties

    /// The indentation to apply to the import statement.
    let indentation: Indentation

    // MARK: - Init

    /// Creates an instance of the renderer.
    /// - Parameter indentation: The indentation to apply to the document.
    init(indentation: Indentation) {
      self.indentation = indentation
    }

    // MARK: - Functions

    /// Renders the specified import statement into a `String`.
    /// - Parameter statement: The import statement to render.
    /// - Returns: The `String` representation of the import statement.
    @StringBuilder
    func render(_ statement: Import) -> String {
      switch statement {
        case let .string(value):
          "@import \"\(value)\";"

        case let .url(value):
          "@import url(\"\(value)\");"
      }

      if indentation.allowsNewlines {
        "\n"
      }
    }
  }
}
