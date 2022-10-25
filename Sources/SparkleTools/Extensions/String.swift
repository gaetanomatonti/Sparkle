extension String {
  /// A new `String` with escaped characters that can cause issues when reading the CSS stylesheets.
  public var escapedForStyleSheet: String {
    self
      .replacingOccurrences(of: ".", with: "\\.")
      .replacingOccurrences(of: "%", with: "\\%")
  }
}
