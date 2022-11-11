extension Rule {
  /// Creates the rule that sets the border radius of the element.
  /// - Parameter value: The value of the border radius.
  /// - Returns: A `Rule` that sets the border radius.
  public static func borderRadius(_ value: Unit) -> Rule {
    Rule(
      .class("border-radius-\(value.render())"),
      declarations: .borderRadius(value)
    )
  }

  /// Creates the rule that applies a border to the element.
  /// - Parameters:
  ///   - width: The width of the border.
  ///   - style: The style of the border.
  ///   - color: The color of the border.
  /// - Returns: A `Rule` that applied a border to the element.
  public static func border(
    width: Border.Width = .defaultValue,
    style: Border.Style = .defaultValue,
    color: Color
  ) -> Rule {
    var declarations: [Declaration] = []

    if width != Border.Width.defaultValue {
      declarations.append(.borderWidth(width))
    }

    if style != Border.Style.defaultValue {
      declarations.append(.borderStyle(style))
    }

    declarations.append(.borderColor(color))

    let className = declarations
      .map { declaration in
        "\(declaration.property)-\(declaration.value)"
      }
      .joined(separator: "-")

    return Rule(.class(className), declarations: declarations)
  }
}
