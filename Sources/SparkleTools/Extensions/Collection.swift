extension Collection where Element: Renderable {
  public func render() -> String {
    map {
      $0.render()
    }
    .joined(separator: " ")
  }
}
