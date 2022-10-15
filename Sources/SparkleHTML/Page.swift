import SparkleTools

public protocol Page: Renderable {
  var head: Component { get }
  
  var body: Component { get }
}

extension Page {
  public func render() -> String {
    let document = Element(name: "html") {
      head
      body
    }.render()

    return "<!DOCTYPE html>" + "\n" + document
  }
}
