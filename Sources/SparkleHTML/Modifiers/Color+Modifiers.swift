import SparkleCSS

extension Component {
  /// Sets the foreground color of the comopnent.
  /// - Parameter color: The color to apply.
  /// - Returns: The component updated with the color.
  public func foregroundColor(_ color: Color) -> Component {
    rule(.foregroundColor(color))
  }

  /// Sets the foreground style of the component.
  /// - Parameter style: The style to apply to the element.
  /// - Returns: The component updated with the style.
  public func foregroundStyle(_ style: ForegroundStyle) -> Component {
    if let color = style as? Color {
      return foregroundColor(color)
    }

    if let gradient = style as? LinearGradient {
      return backgroundStyle(gradient)
        .rule(.clipText())
    }

    return self
  }

  /// Sets the color of the background.
  /// - Parameter color: The color to apply.
  /// - Returns: The component updated with the color.
  public func backgroundColor(_ color: Color) -> Component {
    rule(.backgroundColor(color))
  }

  /// Sets the background image.
  /// - Parameter image: The background image to apply.
  /// - Returns: The component updated with the background image.
  public func backgroundImage(_ image: BackgroundImage) -> Component {
    rule(.backgroundImage(image))
  }

  /// Sets the style of the background.
  /// - Parameter style: The style to apply to the background.
  /// - Returns: The component updated with the style.
  public func backgroundStyle(_ style: BackgroundStyle) -> Component {
    if let color = style as? Color {
      return backgroundColor(color)
    }

    if let image = style as? BackgroundImage {
      return backgroundImage(image)
    }

    return self
  }
}
