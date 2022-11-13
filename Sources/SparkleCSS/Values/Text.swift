public enum Text {
  /// The enumeration for the supported text alignments.
  public enum Alignment: String, Value {
    /// Aligns the text to the left.
    case left

    /// Aligns the text to the center.
    case center

    /// Aligns the text to the right.
    case right

    /// Justifies the text so that each line has equal width.
    case justify

    public var className: String {
      render()
    }
  }

  /// The enumeration for the supported text decorations.
  public enum Decoration: String, Value {
    /// The enumeration for the supported decoration styles.
    public enum Style: String, Value {
      /// A solid line.
      case solid

      /// A double line.
      case double

      /// A dotted line.
      case dotted

      /// A dashed line.
      case dashed

      /// A wavy line.
      case wavy

      public var className: String {
        render()
      }
    }

    /// Places a line under the text.
    case underline

    /// Places a line over the text.
    case overline

    /// Places a line through the text.
    case strikeThrough = "line-through"

    /// Removes any decoration.
    case none

    public var className: String {
      render()
    }
  }

  /// The enumeration for all the text transformations.
  public enum Transform: String, Value {
    /// Transforms all text into uppercase.
    case uppercase

    /// Transforms all text into lowercase.
    case lowercase

    /// Capitalizes all words in the text.
    case capitalize

    /// Removes any transformation.
    case none

    /// The name of the class.
    public var className: String {
      switch self {
        case .uppercase, .lowercase, .capitalize:
          return rawValue

        case .none:
          return "normal-case"
      }
    }
  }
}
