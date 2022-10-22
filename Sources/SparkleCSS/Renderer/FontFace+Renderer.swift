import SparkleTools

extension StyleSheetRenderer {
  /// An object that renders a CSS font face rule.
  struct FontFaceRenderer {

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

    /// Renders the specified font face rule into a `String`.
    /// - Parameter fontFace: The font face to render.
    /// - Returns: The `String` representation of the font face rule.
    @StringBuilder
    func render(_ fontFace: Font.Face) -> String {
      "@font-face {"

      if indentation.allowsNewlines {
        "\n"
      }

      DeclarationRenderer(indentation: indentation.indent()).render(fontFace.declarations)

      if indentation.allowsNewlines {
        "\n"
      }

      "}"
    }
  }
}
