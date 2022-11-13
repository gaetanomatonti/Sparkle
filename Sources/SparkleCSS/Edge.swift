/// The possible edges of a rectangle.
public enum Edge: String {
  /// The top edge.
  case top

  /// The left edge.
  case left

  /// The bottom edge.
  case bottom

  /// The right edge.
  case right
}

extension Edge {
  /// A set of `Edge`s.
  public struct Set: OptionSet {
    /// A set that contains all edges.
    public static let all: Edge.Set = [.top, .left, .bottom, .right]

    /// A set that contains edges on the horizontal axis.
    public static let horizontal: Edge.Set = [.left, .right]

    /// A set that contains edges on the vertical axis.
    public static let vertical: Edge.Set = [.top, .bottom]

    /// The top edge.
    public static let top = Edge.Set(rawValue: 1 << 0)

    /// The left edge.
    public static let left = Edge.Set(rawValue: 1 << 1)

    /// The bottom edge.
    public static let bottom = Edge.Set(rawValue: 1 << 2)

    /// The right edge.
    public static let right = Edge.Set(rawValue: 1 << 3)

    public let rawValue: UInt8

    /// The name of the `Edge` set.
    var name: String {
      switch self {
        case .top:
          return "top"

        case .left:
          return "left"

        case .right:
          return "right"

        case .bottom:
          return "bottom"

        case .horizontal:
          return "horizontal"

        case .vertical:
          return "vertical"

        case .all:
          return ""

        default:
          return edges
            .map(\.rawValue)
            .joined(separator: "-")
      }
    }

    /// The list of `Edge`s contained in the set.
    var edges: [Edge] {
      var edges: [Edge] = []

      if contains(.top) {
        edges.append(.top)
      }

      if contains(.left) {
        edges.append(.left)
      }

      if contains(.right) {
        edges.append(.right)
      }

      if contains(.bottom) {
        edges.append(.bottom)
      }

      return edges
    }

    public init(rawValue: UInt8) {
      self.rawValue = rawValue
    }
  }
}
