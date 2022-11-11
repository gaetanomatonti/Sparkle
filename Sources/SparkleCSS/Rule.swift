import SparkleTools

/// A type representing a CSS rule applied as a class.
public struct Rule {

  // MARK: - Structured Data

  /// The possible selectors that select HTML elements to style.
  public enum Selector: Hashable {
    /// Selects all the elements.
    case universal

    /// Selects the element based on the element name.
    case element(_ name: String)

    /// Selects the element based on the identifier.
    case identifier(_ name: String)

    /// Selects the element based on the class.
    case `class`(_ name: String)

    /// The priority used to sort the selectors.
    var priority: Int {
      switch self {
        case .universal:
          return 0

        case .element:
          return 1

        case .identifier:
          return 2

        case .class:
          return 3
      }
    }
  }

  // MARK: - Stored Properties

  /// The selector of the CSS rule.
  public let selector: Selector

  /// The declarations contained in the CSS rule.
  public let declarations: [Declaration]

  // MARK: - Init

  /// Creates a new rule by specifying the name of the CSS class and a declaration.
  /// - Parameters:
  ///   - name: The name of the CSS class.
  ///   - declarations: The list of CSS declarations that set a style.
  public init(_ selector: Selector, declarations: Declaration...) {
    self.selector = selector
    self.declarations = declarations
  }

  /// Creates a new rule by specifying the name of the CSS class and a declaration.
  /// - Parameters:
  ///   - name: The name of the CSS class.
  ///   - declarations: The list of CSS declarations that set a style.
  public init(_ selector: Selector, declarations: [Declaration]) {
    self.selector = selector
    self.declarations = declarations
  }
}

// MARK: - Hashable

extension Rule: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(selector)
  }
}

extension Rule.Selector: Comparable {
  public static func <(lhs: Self, rhs: Self) -> Bool {
    switch (lhs, rhs) {
      case let (.element(lhsValue), .element(rhsValue)):
        return lhsValue < rhsValue

      case let (.identifier(lhsValue), .identifier(rhsValue)):
        return lhsValue < rhsValue

      case let (.class(lhsValue), .class(rhsValue)):
        return lhsValue < rhsValue

      default:
        return lhs.priority < rhs.priority
    }
  }
}
