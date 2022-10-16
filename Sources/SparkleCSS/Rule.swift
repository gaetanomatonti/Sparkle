import SparkleTools

/// A type representing a CSS rule applied as a class.
public struct Rule {

  // MARK: - Structured Data

  /// The possible selectors that select HTML elements to style.
  public enum Selector: Hashable {
    /// Selectes the element based on the class.
    case `class`(_ name: String)

    /// Selects the element based on the element name.
    case element(_ name: String)

    /// Selects the element based on the identifier.
    case identifier(_ name: String)

    /// Selects all the elements.
    case universal
  }

  // MARK: - Stored Properties

  /// The selector of the CSS rule.
  public let selector: Selector

  /// The declarations contained in the CSS rule.
  public let content: [Declaration]

  // MARK: - Init

  /// Creates a new rule by specifying the name of the CSS class and a declaration.
  /// - Parameters:
  ///   - name: The name of the CSS class.
  ///   - declaration: The list of CSS declarations that set a styles.
  public init(_ selector: Selector, declarations: Declaration...) {
    self.selector = selector
    self.content = declarations
  }
}

// MARK: - Hashable

extension Rule: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(selector)
  }
}

// MARK: - String Representable

extension Rule: Renderable {
  public func render() -> String {
    """
    \(selector.render()) { \(content.render()) }
    """
  }
}

extension Rule.Selector: Renderable {
  public func render() -> String {
    switch self {
      case let .class(name):
        return ".\(name)"

      case let .identifier(name):
        return "#\(name)"

      case let .element(name):
        return name

      case .universal:
        return "*"
    }
  }
}
