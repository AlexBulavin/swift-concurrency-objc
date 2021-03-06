
var DOM_MODIFICATION: Int { get }
var DOM_ADDITION: Int { get }
var DOM_REMOVAL: Int { get }
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMMutationEvent : DOMEvent {
  var relatedNode: DOMNode! { get }
  var prevValue: String! { get }
  var newValue: String! { get }
  var attrName: String! { get }
  var attrChange: UInt16 { get }
  @available(macOS 10.5, *)
  func initMutationEvent(_ type: String!, canBubble: Bool, cancelable: Bool, relatedNode: DOMNode!, prevValue: String!, newValue: String!, attrName: String!, attrChange: UInt16)
}
extension DOMMutationEvent {
}
