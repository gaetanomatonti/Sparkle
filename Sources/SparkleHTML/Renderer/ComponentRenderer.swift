import SparkleTools

extension HTMLRenderer {
  /// An object that renders a `Component` into a `String`.
  struct ComponentRenderer {

    // MARK: - Stored Properties

    /// The indentation to apply to the component.
    let indentation: Indentation

    // MARK: - Init

    /// Creates an instance of the renderer.
    /// - Parameter indentation: The indentation to apply.
    init(indentation: Indentation) {
      self.indentation = indentation
    }

    // MARK: - Functions

    /// Renders the specified `Component` into an HTML `String`.
    /// - Parameter component: The component to render.
    /// - Returns: A `String` of the component's HTML representation.
    public func render(_ component: Component) -> String {
      if component is EmptyComponent {
        return ""
      }

      if let component = component as? RawText {
        return TextRenderer(indentation: indentation).render(component)
      }

      if let component = component as? Text {
        return TextRenderer(indentation: indentation).render(component)
      }

      if let component = component as? Element {
        return ElementRenderer(indentation: indentation).render(component)
      }

      if let component = component as? Group {
        return GroupRenderer(indentation: indentation).render(component)
      }

      return render(component.body)
    }
  }
}
