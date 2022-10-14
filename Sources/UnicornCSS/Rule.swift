import UnicornTools

/// An type describing a CSS rule applied as a class.
public struct Rule {

  // MARK: - Stored Properties

  /// The name of the CSS rule.
  public let name: String

  /// The declarations contained in the CSS rule.
  public let content: [Declaration]

  // MARK: - Init

  public init(name: String, declaration: Declaration) {
    self.name = name
    self.content = [declaration]
  }

  public init(name: String, content: [Declaration]) {
    self.name = name
    self.content = content
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
