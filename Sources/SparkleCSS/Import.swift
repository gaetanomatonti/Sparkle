import SparkleTools

/// The possible ways to create an import statement.
public enum Import: Hashable {
  /// Import a resource using a `String` path.
  case string(_ value: String)

  /// Import a resource using a `URL`.
  case url(_ value: String)
}
