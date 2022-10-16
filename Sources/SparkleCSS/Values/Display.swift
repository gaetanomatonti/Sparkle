/// The possible display behaviours of an element.
public enum Display: String {
  /// Displays the element as a block element.
  case block

  /// Displays the element as an inline element.
  case inline

  /// Displays the element as a flex container.
  case flex

  /// Displays the element as a grid container.
  case grid
}

extension Display: Value {
  public func render() -> String {
    rawValue
  }
}
