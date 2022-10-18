import SparkleTools

extension HTMLRenderer {
  /// An object that renders an HTML tag into a `String`.
  struct TagRenderer {

    // MARK: - Functions

    /// Renders the opening of a tag.
    /// - Parameter tag: The tag to render.
    @StringBuilder
    func renderOpeningTag(_ tag: Tag) -> String {
      "<"

      tag.name

      if !tag.attributes.isEmpty {
        " "
        tag.attributes.sorted().render()
      }

      ">"
    }

    /// Renders the closing of a tag, if any.
    /// - Parameter tag: The tag to render.
    func renderClosingTag(_ tag: Tag) -> String? {
      switch tag.kind {
        case .selfClosing:
          return nil

        case .standard:
          return "</" + tag.name + ">"
      }
    }
  }
}
