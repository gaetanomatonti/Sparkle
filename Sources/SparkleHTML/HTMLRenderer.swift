import SparkleTools

/// An object that renders HTML components.
public struct HTMLRenderer {

  // MARK: - Stored Properties

  /// The indentation configuration for the rendering.
  let indentation: Indentation

  // MARK: - Init

  public init(indentation: Indentation = Indentation()) {
    self.indentation = indentation
  }

  // MARK: - Functions

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

  private func render(_ group: Group, indentation: Indentation) -> String {
    group.components.reduce("") { partialResult, component in
      partialResult + HTMLRenderer(indentation: indentation).render(component)
    }
  }

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

  @StringBuilder
  private func render(_ text: Text, indentation: Indentation) -> String {
    if indentation.shouldInsertNewline {
      "\n"
    }

    indentation.description

    HTMLRenderer(indentation: indentation).render(text.body)

    if indentation.shouldInsertNewline {
      "\n"
    }
  }

  private func render(_ rawText: RawText, indentation: Indentation) -> String {
    rawText.content
  }
}
