import SparkleTools

extension HTMLRenderer {
  /// An object that renders text into a `String`.
  struct TextRenderer {

    // MARK: - Stored Properties

    /// The indentation to apply to the text.
    let indentation: Indentation

    // MARK: - Init

    /// Creates an instance of the renderer.
    /// - Parameter indentation: The indentation to apply.
    init(indentation: Indentation) {
      self.indentation = indentation
    }

    // MARK: - Functions

    /// Renders the specified `Text` into an HTML `String`.
    /// - Parameters:
    ///   - text: The text to render.
    ///   - indentation: The indentation to apply to the HTML.
    /// - Returns: A `String` of the text's HTML representation.
    @StringBuilder
    func render(_ text: Text) -> String {
      indentation.description

      ComponentRenderer(indentation: indentation).render(text.body)
    }

    /// Renders the specified `RawText` into an HTML `String`.
    /// - Parameters:
    ///   - rawText: The raw text to render.
    ///   - indentation: The indentation to apply to the HTML.
    /// - Returns: A `String` of the raw text's HTML representation.
    @StringBuilder
    func render(_ rawText: RawText) -> String {
      if indentation.shouldInsertNewline {
        "\n"
      }

      indentation.description

      rawText.content

      if indentation.shouldInsertNewline {
        "\n"
      }
    }
  }
}
