import CoreGraphics

import Base

let commonHeaderPrefix = ObjcTerm.comment("Generated by cggen")

public enum GenerationStyle: String {
  case plain
  case swiftFriendly = "swift-friendly"
}

extension GenerationStyle {
  internal var drawingHandlerPrefix: String {
    switch self {
    case .plain:
      return ""
    case .swiftFriendly:
      return "static "
    }
  }
}
