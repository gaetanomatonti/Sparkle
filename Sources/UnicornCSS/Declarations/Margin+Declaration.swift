import UnicornTools

public extension Declaration {
  static func margin(_ value: Unit) -> Declaration {
    Declaration(property: "margin", value: value)
  }

  static func margin(vertical: Unit, horizontal: Unit) -> Declaration {
    Declaration(property: "margin", values: [vertical, horizontal])
  }

  static func margin(top: Unit, horizontal: Unit, bottom: Unit) -> Declaration {
    Declaration(property: "margin", values: [top, horizontal, bottom])
  }

  static func margin(top: Unit, right: Unit, bottom: Unit, left: Unit) -> Declaration {
    Declaration(property: "margin", values: [top, right, bottom, left])
  }

  static func margin(_ edge: Edge, _ value: Unit) -> Declaration {
    Declaration(property: "margin-\(edge.rawValue)", value: value)
  }
}
