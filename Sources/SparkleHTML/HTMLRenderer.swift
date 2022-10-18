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

  /// Renders the specified `Component` into an HTML `String`.
  /// - Parameter component: The component to render.
  /// - Returns: A `String` of the component's HTML representation.
  public func render(_ component: Component) -> String {
    if let component = component as? RawText {
      return render(component, indentation: indentation)
    }

    if let component = component as? Text {
      return render(component, indentation: indentation)
    }

    if let component = component as? Element {
      return render(component, indentation: indentation)
    }

    if let component = component as? Group {
      return render(component, indentation: indentation)
    }

    if let page = component as? Page {
      return render(page, indentation: indentation)
    }

    return render(component.body)
  }

  /// Renders the specified `Page` into an HTML `String`.
  /// - Parameters:
  ///   - page: The page to render.
  ///   - indentation: The indentation to apply to the HTML.
  /// - Returns: A `String` of the page's HTML representation.
  @StringBuilder
  private func render(_ page: Page, indentation: Indentation) -> String {
    "<!DOCTYPE html>"

    if indentation.allowsNewlines {
      "\n"
    }

    render(
      Element(name: "html") {
        page.head

        page.body
      },
      indentation: indentation
    )
  }

  /// Renders the specified `Group` into an HTML `String`.
  /// - Parameters:
  ///   - group: The group to render.
  ///   - indentation: The indentation to apply to the HTML.
  /// - Returns: A `String` of the group's HTML representation.
  private func render(_ group: Group, indentation: Indentation) -> String {
    group.components.reduce("") { partialResult, component in
      partialResult + HTMLRenderer(indentation: indentation).render(component)
    }
  }

  /// Renders the specified `Element` into an HTML `String`.
  /// - Parameters:
  ///   - element: The element to render.
  ///   - indentation: The indentation to apply to the HTML.
  /// - Returns: A `String` of the element's HTML representation.
  @StringBuilder
  private func render(_ element: Element, indentation: Indentation) -> String {
    if indentation.shouldInsertNewline {
      "\n"
    }

    indentation.description

    element.openingTag

    if let content = element.content, !(content is EmptyComponent) {
      HTMLRenderer(indentation: indentation.indent()).render(content)
    }

    indentation.description

    element.closingTag ?? ""

    if indentation.shouldInsertNewline {
      "\n"
    }
  }

  /// Renders the specified `Text` into an HTML `String`.
  /// - Parameters:
  ///   - text: The text to render.
  ///   - indentation: The indentation to apply to the HTML.
  /// - Returns: A `String` of the text's HTML representation.
  @StringBuilder
  private func render(_ text: Text, indentation: Indentation) -> String {
    indentation.description

    HTMLRenderer(indentation: indentation).render(text.body)
  }

  /// Renders the specified `RawText` into an HTML `String`.
  /// - Parameters:
  ///   - rawText: The raw text to render.
  ///   - indentation: The indentation to apply to the HTML.
  /// - Returns: A `String` of the raw text's HTML representation.
  @StringBuilder
  private func render(_ rawText: RawText, indentation: Indentation) -> String {
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
