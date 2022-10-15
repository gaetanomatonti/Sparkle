extension Component {
  public func attribute(_ attribute: Attribute) -> Component {
    if let body = body as? Element {
      return body.appending(attribute)
    }

    return self
  }

  private func attribute(_ name: String, value: String) -> Component {
    let attribute = Attribute(name, value: value)
    return self.attribute(attribute)
  }
}

extension Component {
  public func `class`(_ name: String) -> Component {
    attribute("class", value: name)
  }

  public func href(_ path: String) -> Component {
    attribute("href", value: path)
  }

  public func rel(_ relationship: String) -> Component {
    attribute("rel", value: relationship)
  }
}
