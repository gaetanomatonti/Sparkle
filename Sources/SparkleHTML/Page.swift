import SparkleTools

/// A protocol defining requirements for an HTML page.
public protocol Page {
  /// The head of the document.
  var head: Component { get }

  /// The body of the document.
  var body: Component { get }
}
