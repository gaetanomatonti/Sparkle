/// The behaviours used to calculate the size of an element.
public enum BoxSizing: String, Value {
  /// The size of the element is calculated only from the content.
  case contentBox = "content-box"

  /// The size of the element is calculated from the content, its padding and border.
  case borderBox = "border-box"

  public var className: String {
    render()
  }
}
