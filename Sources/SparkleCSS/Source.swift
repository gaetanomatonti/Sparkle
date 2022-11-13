import SparkleTools

/// The possible ways to create an import statement.
public enum Source: Hashable, Value {
  /// Import a resource using a `String` path.
  case string(_ value: String)

  /// Import a resource using a `URL`.
  case url(_ value: String)

  public var className: String {
    "source-\(hashValue)"
  }

  public func render() -> String {
    switch self {
      case let .string(value):
        return "\"\(value)\""

      case let .url(value):
        return "url(\"\(value)\")"
    }
  }
}
