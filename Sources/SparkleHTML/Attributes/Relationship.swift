/// The possible relationships for a linked resource.
/// Used as a value for the `rel` attribute.
public enum Relationship: String {
  /// The alternate version of the wepage.
  /// Used to link an RSS feed or a localized version of a page.
  case alternate

  /// The icon used for shortcuts on Apple devices.
  case appleTouchIcon = "apple-touch-icon"

  /// The canonical `URL` of the webpage.
  /// Used to facilitate search engine crawlers.
  case canonical

  /// The icon used as favicon of the webpage.
  case shortcutIcon = "shortcut icon"

  /// The linked resource is a stylesheet.
  case stylesheet
}
