
@available(iOS 10.0, *)
class UNNotificationAttachment : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var url: URL { get }
  var type: String { get }
  convenience init(identifier: String, url URL: URL, options: [AnyHashable : Any]? = nil) throws
}
@available(iOS 10.0, *)
let UNNotificationAttachmentOptionsTypeHintKey: String
@available(iOS 10.0, *)
let UNNotificationAttachmentOptionsThumbnailHiddenKey: String
@available(iOS 10.0, *)
let UNNotificationAttachmentOptionsThumbnailClippingRectKey: String
@available(iOS 10.0, *)
let UNNotificationAttachmentOptionsThumbnailTimeKey: String
