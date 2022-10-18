/// A type representing the state of the indentation.
public struct Indentation {

  // MARK: - Structured Data

  /// The available kinds of indentation.
  public enum Kind {
    /// Code should not be indented.
    case none

    /// Code should be intended with the specified amount of tabs.
    case tabs(_ value: Int)

    /// Code should be intended with the specified amount of spaces.
    case spaces(_ value: Int)
  }

  // MARK: - Stored Properties

  /// Whether newlines are allowed in the document.
  public let allowsNewlines: Bool

  /// The kind of indentation to be used.
  let kind: Kind

  /// The level of indentation, increased when rendering a nested element.
  let level: Int

  // MARK: - Computed Properties

  /// Whether a newline should be inserted.
  public var shouldInsertNewline: Bool {
    allowsNewlines && level > 0
  }

  // MARK: - Init

  /// Creates an instance of `Indentation` by providing default behaviour.
  /// - Parameters:
  ///   - kind: The kind of indentation. Defaults to `tab(1)` which indents code using one tab.
  ///   - level: The level of indentation.
  ///   - allowsNewlines: A `Bool` that indicates whether newline characters should be allowed in the document.
  public init(kind: Kind = .tabs(1), level: Int = .zero, allowsNewlines: Bool = true) {
    self.kind = kind
    self.level = level
    self.allowsNewlines = allowsNewlines
  }

  // MARK: - Functions

  /// Returns an instance of the indentation settings configured for a nested element.
  public func indent() -> Indentation {
    Indentation(kind: kind, level: level + 1, allowsNewlines: allowsNewlines)
  }
}

extension Indentation: CustomStringConvertible {
  public var description: String {
    String(repeating: kind.description, count: level)
  }
}

extension Indentation.Kind: CustomStringConvertible {
  public var description: String {
    switch self {
      case .none:
        return ""

      case let .tabs(count):
        return String(repeating: "\t", count: count)

      case let .spaces(count):
        return String(repeating: " ", count: count)
    }
  }
}
