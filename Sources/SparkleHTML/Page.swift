import SparkleTools

/// A protocol defining requirements for an HTML page.
public protocol Page: Renderable {
  /// The head of the document.
  var head: Component { get }

  /// The body of the document.
  var body: Component { get }
}

extension Page {
  public func render() -> String {
    let document = Element(name: "html") {
      head
      body
    }.render()

    return "<!DOCTYPE html>" + "\n" + document
  }
}
