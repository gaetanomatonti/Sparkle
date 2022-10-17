import SparkleTools

/// The possible ways to create an import statement.
public enum Import: Hashable {
  /// Import a resources using a `String`.
  case string(_ value: String)

  /// Import a resources using a `URL`.
  case url(_ value: String)
}

extension Import: Renderable {
  public func render() -> String {
    switch self {
      case let .string(value):
        return "@import \"\(value)\";"

      case let .url(value):
        return "@import url(\"\(value)\");"
    }
  }
}
