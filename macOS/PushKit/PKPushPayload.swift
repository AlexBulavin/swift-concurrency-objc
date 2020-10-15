
@available(macOS 10.15, *)
class PKPushPayload : NSObject {
  var type: PKPushType { get }
  var dictionaryPayload: [AnyHashable : Any] { get }
}
