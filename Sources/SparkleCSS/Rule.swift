import SparkleTools

/// A type representing a CSS rule applied as a class.
public struct Rule {

  // MARK: - Stored Properties

  /// The name of the CSS rule.
  public let name: String

  /// The declarations contained in the CSS rule.
  public let content: [Declaration]

  // MARK: - Init

  /// Creates a new rule by specifying the name of the CSS class and a declaration.
  /// - Parameters:
  ///   - name: The name of the CSS class.
  ///   - declaration: The list of CSS declarations that set a styles.
  public init(_ name: String, declarations: Declaration...) {
    self.name = name
    self.content = declarations
  }
}

// MARK: - Hashable

extension Rule: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(name)
  }
}

// MARK: - String Representable

extension Rule: Renderable {
  public func render() -> String {
    """
    .\(name) { \(content.render()) }
    """
  }
}
