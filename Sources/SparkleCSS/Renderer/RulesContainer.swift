import SparkleTools

/// An object that contains the rules that will be handed off to the renderer at the end of the HTML generation step.
public actor RulesContainer {

  // MARK: - Stored Properties

  /// The set of `@import` statements.
  var imports: Set<Source>

  /// The font faces to apply to the stylesheet.
  var fontFaces: Set<Font.Face>

  /// The set of rules that should be rendered.
  var rules: Set<Rule> = []

  // MARK: - Init

  init(imports: Set<Source> = [], fontFaces: Set<Font.Face> = [], rules: Set<Rule> = []) {
    self.imports = imports
    self.fontFaces = fontFaces
    self.rules = rules
  }

  // MARK: - Functions

  /// Inserts an import statement in the set of imports.
  /// - Parameter source: The import statement to add to the set of imports.
  public func `import`(_ source: Source) {
    imports.insert(source)
  }

  /// Inserts a font face in the stylesheet.
  /// - Parameter rule: The font face to add to the stylesheet.
  public func insert(_ fontFace: Font.Face) {
    fontFaces.insert(fontFace)
  }

  /// Inserts a rule in the set of rules to render.
  /// - Parameter rule: The rule to add to the set of rules.
  public func insert(_ rule: Rule) {
    rules.insert(rule)
  }

  /// Inserts a lit of rules in the set of rules to render.
  /// - Parameter rules: The list of rules to add to the set of rules.
  public func insert<C>(_ rules: C) where C: Collection, C.Element == Rule {
    self.rules.formUnion(rules)
  }
}

public struct RulesContainerKey: EnvironmentKey {
  public static var defaultValue = RulesContainer()
}

// MARK: - EnvironmentValues

extension EnvironmentValues {
  /// The instance of the `Renderer` in the environment.
  public static var rulesContainer: RulesContainer {
    get {
      self[RulesContainerKey.self]
    }
    set {
      self[RulesContainerKey.self] = newValue
    }
  }
}
