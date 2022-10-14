import UnicornTools

extension Rule {
  public static func margin(_ value: Unit) -> Rule {
    Rule(name: "margin-\(value.render())", declaration: .margin(value))
  }

  public static func margin(vertical: Unit, horizontal: Unit) -> Rule {
    Rule(
      name: "margin-v-\(vertical.render())-h-\(horizontal.render())",
      declaration: .margin(vertical: vertical, horizontal: horizontal)
    )
  }

  public static func margin(top: Unit, horizontal: Unit, bottom: Unit) -> Rule {
    Rule(
      name: "margin-t-\(top.render())-h-\(horizontal)-b-\(bottom)",
      declaration: .margin(top: top, horizontal: horizontal, bottom: bottom)
    )
  }

  public static func margin(top: Unit, right: Unit, bottom: Unit, left: Unit) -> Rule {
    Rule(
      name: "margin-t-\(top.render())-r-\(right.render())-b-\(bottom.render())-l-\(left)",
      declaration: .margin(top: top, right: right, bottom: bottom, left: left)
    )
  }

  public static func margin(_ edge: Edge, _ value: Unit) -> Rule {
    Rule(
      name: "margin-\(edge.rawValue)-\(value.render())",
      declaration: .margin(edge, value)
    )
  }
}
