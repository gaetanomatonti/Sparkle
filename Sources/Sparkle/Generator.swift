import Foundation

/// An object that generates a file from the given `String` content.
struct Generator {

  // MARK: - Stored Properties

  /// The content to write to file.
  let content: String

  // MARK: - Init

  /// Creates an instance of `Generator`.
  /// - Parameter content: The `String` to write to file.
  init(content: String) {
    self.content = content
  }

  // MARK: - Functions

  /// Writes the `content` to the specified file.
  /// - Parameters:
  ///   - name: The name of the file.
  ///   - pathExtension: The extension of the file.
  ///   - path: The path in which to save the file.
  func write(file name: String, with pathExtension: String, to path: URL) throws {
    guard path.isFileURL else {
      throw Error.invalidFileURL
    }

    try FileManager.default.createDirectory(at: path, withIntermediateDirectories: true)

    let newPath = path.appendingPathComponent(name).appendingPathExtension(pathExtension)

    guard let data = content.data(using: .utf8) else {
      throw Error.invalidData
    }

    FileManager.default.createFile(atPath: newPath.path, contents: data)

    try data.write(to: newPath)
  }
}

extension Generator {
  /// The possible errors that can occur when generating a file.
  enum Error: Swift.Error {
    /// The `URL` does not link to a directory.
    case invalidFileURL

    /// The data to write is invalid.
    case invalidData
  }
}
