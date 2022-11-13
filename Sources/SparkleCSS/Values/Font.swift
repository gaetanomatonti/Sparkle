/// A type that represents a font.
public enum Font {

// MARK: - Structured Data

  /// A type representing a font face from a font file.
  public struct Face: Hashable, Equatable {
    /// The declarations that describe the font face.
    let declarations: [Declaration]

    public init(
      family: Font.Family,
      source: Source,
      stretch: Font.Stretch? = nil,
      style: Font.Style? = nil,
      weight: Font.Weight? = nil
    ) {
      self.declarations = [
        .fontFamily(family),
        .source(source),
        stretch.flatMap { .fontStretch($0) },
        style.flatMap { .fontStyle($0) },
        weight.flatMap { .fontWeight($0) }
      ]
      .compactMap { $0 }
    }
  }

  /// The enumeration of the suppoerted font families.
  public enum Family: Value {
    /// Monospace font family.
    case monospace

    /// Sans serif font family.
    case sansSerif

    /// Serif font family.
    case serif

    /// The font family of the operating system.
    case system

    /// A custom font family.
    case custom(_ name: String)

    public var className: String {
      render()
    }

    public func render() -> String {
      switch self {
        case .monospace:
          return "monospace"

        case .sansSerif:
          return "sans-serif"

        case .serif:
          return "serif"

        case .system:
          return "system-ui"

        case let .custom(name):
          return "\"\(name)\""
      }
    }
  }

  /// The enumeration of the supported font stretch values.
  public enum Stretch: String, ValueWithDefaultValue {
    /// Ultra condensed font.
    case ultraCondensed = "ultra-condensed"

    /// Extra condensed font.
    case extraCondensed = "extra-condensed"

    /// Semi condensed font.
    case semiCondensed = "semi-condensed"

    /// Condensed font.
    case condensed

    /// Normal font.
    case normal

    /// Expanded font.
    case expanded

    /// Semi expanded font.
    case semiExpanded = "semi-expanded"

    /// Extra expanded font.
    case extraExpanded = "extra-expanded"

    /// Ultra expanded font.
    case ultraExpanded = "ultra-expanded"

    public var className: String {
      render()
    }

    public static var defaultValue: Font.Stretch {
      .normal
    }
  }

  /// The enumeration of the supported font styles.
  public enum Style: String, ValueWithDefaultValue {
    /// Normal font style.
    case normal

    /// Italic font style.
    case italic

    /// Oblique font style.
    case oblique

    public var className: String {
      render()
    }

    public static var defaultValue: Font.Style {
      .normal
    }
  }

  /// The enumeration of the supported font styles.
  public enum Variant: String, ValueWithDefaultValue {
    /// The normal variant.
    case normal

    /// The small caps variant.
    case smallCaps = "small-caps"

    public var className: String {
      render()
    }

    public static var defaultValue: Font.Variant {
      .normal
    }
  }

  /// The enumeration of the supported font weights.
  public enum Weight: Int, ValueWithDefaultValue {
    /// Thin font weight.
    case thin = 100

    /// Extra light font weight.
    case extraLight = 200

    /// Light font weight.
    case light = 300

    /// Regular font weight.
    case regular = 400

    /// Medium font weight.
    case medium = 500

    /// Semi bold font weight.
    case semiBold = 600

    /// Bold font weight.
    case bold = 700

    /// Extra bold font weight.
    case extraBold = 800

    /// Black font weight.
    case black = 900

    public var className: String {
      render()
    }

    public static var defaultValue: Font.Weight {
      .regular
    }
  }

  /// A wrapper for a list of `Family` values.
  struct Families: Value {
    /// The wrapped list of families.
    let families: [Family]

    var className: String {
      render()
    }

    init(_ families: [Family]) {
      self.families = families
    }

    func render() -> String {
      families.map { family in
        family.render()
      }
      .joined(separator: ", ")
    }
  }
}
