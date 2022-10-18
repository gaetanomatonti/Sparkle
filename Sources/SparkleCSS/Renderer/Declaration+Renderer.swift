import SparkleTools

extension StyleSheetRenderer {
  /// An object that renders a CSS declaration.
  struct DeclarationRenderer {

    // MARK: - Stored Properties

    /// The declaration to render.
    let indentation: Indentation

    // MARK: - Init

    /// Creates an instance of the renderer.
    /// - Parameter indentation: The indentation to apply to the document.
    init(indentation: Indentation) {
      self.indentation = indentation
    }

    // MARK: - Functions

    /// Renders a list of declarations into a `String`.
    /// - Parameter declarations: The list of declarations to render.
    /// - Returns: The `String` representation of the declarations.
    func render(_ declarations: [Declaration]) -> String {
      declarations.map { declaration in
        render(declaration)
      }
      .joined(separator: "\n")
    }

    /// Renders a declaration into a `String`.
    /// - Parameter declaration: The declaration to render.
    /// - Returns: The `String` representation of the declaration.
    func render(_ declaration: Declaration) -> String {
      indentation.description + declaration.property + ": " + declaration.value + ";"
    }
  }
}
