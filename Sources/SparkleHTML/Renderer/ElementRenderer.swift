import SparkleTools

extension HTMLRenderer {
  /// An object that renders an `Element` into a `String`.
  struct ElementRenderer {

    // MARK: - Stored Properties

    /// The indentation to apply to the element.
    let indentation: Indentation

    // MARK: - Init

    /// Creates an instance of the renderer.
    /// - Parameter indentation: The indentation to apply.
    init(indentation: Indentation) {
      self.indentation = indentation
    }

    // MARK: - Functions

    /// Renders the specified `Element` into an HTML `String`.
    /// - Parameters:
    ///   - element: The element to render.
    ///   - indentation: The indentation to apply to the HTML.
    /// - Returns: A `String` of the element's HTML representation.
    @StringBuilder
    func render(_ element: Element) -> String {
      if indentation.shouldInsertNewline {
        "\n"
      }

      indentation.description

      element.openingTag

      if let content = element.content {
        ComponentRenderer(indentation: indentation.indent()).render(content)
      }

      indentation.description

      element.closingTag ?? ""

      if indentation.shouldInsertNewline {
        "\n"
      }
    }
  }
}
