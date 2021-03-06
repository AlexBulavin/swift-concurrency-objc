
@available(macOS, introduced: 10.5, deprecated: 10.14)
enum WebCacheModel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case documentViewer
  case documentBrowser
  case primaryWebBrowser
}
extension NSNotification.Name {
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebPreferencesChanged: NSNotification.Name
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
class WebPreferences : NSObject, NSCoding {
  class func standard() -> WebPreferences!
  init!(identifier anIdentifier: String!)
  var identifier: String! { get }
  var standardFontFamily: String!
  var fixedFontFamily: String!
  var serifFontFamily: String!
  var sansSerifFontFamily: String!
  var cursiveFontFamily: String!
  var fantasyFontFamily: String!
  var defaultFontSize: Int32
  var defaultFixedFontSize: Int32
  var minimumFontSize: Int32
  var minimumLogicalFontSize: Int32
  var defaultTextEncodingName: String!
  var userStyleSheetEnabled: Bool
  var userStyleSheetLocation: URL!
  var isJavaEnabled: Bool
  var isJavaScriptEnabled: Bool
  var javaScriptCanOpenWindowsAutomatically: Bool
  var arePlugInsEnabled: Bool
  var allowsAnimatedImages: Bool
  var allowsAnimatedImageLooping: Bool
  var loadsImagesAutomatically: Bool
  var autosaves: Bool
  var shouldPrintBackgrounds: Bool
  var privateBrowsingEnabled: Bool
  var tabsToLinks: Bool
  var usesPageCache: Bool
  var cacheModel: WebCacheModel
  var suppressesIncrementalRendering: Bool
  var allowsAirPlayForMediaPlayback: Bool
}
