import Foundation

extension FileManager {
  /// Looks for the main directory of a Swift Package from the path of a specific file.
  /// - Parameter filePath: The path of the file where the research should start from.
  /// - Returns: The `URL` of the main Swift Package directory (i.e.: the directory that contains the `Package.swift` file).
  public func packagePath(from filePath: URL) -> URL {
    var path = filePath

    while !FileManager.default.fileExists(atPath: path.appendingPathComponent("Package.swift").path) {
      path.deleteLastPathComponent()
    }

    return path
  }
}
