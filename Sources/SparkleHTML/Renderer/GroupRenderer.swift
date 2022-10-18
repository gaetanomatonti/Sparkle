import SparkleTools

extension HTMLRenderer {
  /// An object that renders a `Group` into a `String`.
  struct GroupRenderer {

    // MARK: - Stored Properties

    /// The indentation to apply to the group.
    let indentation: Indentation

    // MARK: - Init

    /// Creates an instance of the renderer.
    /// - Parameter indentation: The indentation to apply.
    init(indentation: Indentation) {
      self.indentation = indentation
    }

    // MARK: - Functions

    /// Renders the specified `Group` into an HTML `String`.
    /// - Parameters:
    ///   - group: The group to render.
    ///   - indentation: The indentation to apply to the HTML.
    /// - Returns: A `String` of the group's HTML representation.
    func render(_ group: Group) -> String {
      group.components.reduce("") { partialResult, component in
        partialResult + ComponentRenderer(indentation: indentation).render(component)
      }
    }
  }
}
