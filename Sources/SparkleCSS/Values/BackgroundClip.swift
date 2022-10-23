/// The enumeration of the available background clipping methods.
public enum BackgroundClip: String, Value {
  /// The background extends to the border box.
  case borderBox = "border-box"

  /// The background extends to the padding box.
  case paddingBox = "padding-box"

  /// Clips the background to the content box.
  case contentBox = "content-box"

  /// Clips the background to the text.
  case text
}
