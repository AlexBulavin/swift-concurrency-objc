
@available(watchOS 2.0, *)
class NSOrthography : NSObject, NSCopying, NSSecureCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(watchOS 2.0, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
}
extension NSOrthography {
  @available(watchOS 2.0, *)
  func languages(forScript script: String) -> [String]?
  @available(watchOS 2.0, *)
  func dominantLanguage(forScript script: String) -> String?
  @available(watchOS 2.0, *)
  var dominantLanguage: String { get }
  @available(watchOS 2.0, *)
  var allScripts: [String] { get }
  @available(watchOS 2.0, *)
  var allLanguages: [String] { get }
  @available(watchOS 4.0, *)
  class func defaultOrthography(forLanguage language: String) -> Self
}
extension NSOrthography {
}
