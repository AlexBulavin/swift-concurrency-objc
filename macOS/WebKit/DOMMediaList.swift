
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMMediaList : DOMObject {
  var mediaText: String!
  var length: UInt32 { get }
  func item(_ index: UInt32) -> String!
  func deleteMedium(_ oldMedium: String!)
  func appendMedium(_ newMedium: String!)
}
