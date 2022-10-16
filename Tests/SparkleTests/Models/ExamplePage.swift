import SparkleHTML

struct ExamplePage: Page {
  var head: Component {
    Head {
      Link(.href("styles.css"), .rel(.stylesheet))
    }
  }

  var body: Component {
    Body {
      Paragraph {
        Text("Hello World")
      }
    }
  }
}
