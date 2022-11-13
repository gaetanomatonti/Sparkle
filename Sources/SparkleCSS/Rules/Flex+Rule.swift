extension Rule {
  /// Creates a rule that sets the content justification of the flex layout.
  /// - Parameter justification: The justification of the content.
  /// - Returns: The rule that sets the justification of the content.
  public static func justifyContent(_ justification: Flex.Content.Justification) -> Rule {
    Rule(
      .class("justify-\(justification.className)"),
      declarations: .justifyContent(justification)
    )
  }

  /// Creates a rule that sets the content alignment of the flex layout.
  /// - Parameter alignment: The alignment of the content.
  /// - Returns: The rule that sets the alignment of the content.
  public static func alignContent(_ alignment: Flex.Content.Alignment) -> Rule {
    Rule(
      .class("content-\(alignment.className)"),
      declarations: .alignContent(alignment)
    )
  }

  /// Creates a rule that sets the item alignment of the flex layout.
  /// - Parameter alignment: The alignment of the items.
  /// - Returns: The rule that sets the alignment of the items.
  public static func alignItems(_ alignment: Flex.Item.Alignment) -> Rule {
    Rule(
      .class("items-\(alignment.className)"),
      declarations: .alignItems(alignment)
    )
  }
}
