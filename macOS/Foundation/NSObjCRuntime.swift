
var NSFoundationVersionNumber: Double
var NSFoundationVersionNumber10_0: Double { get }
var NSFoundationVersionNumber10_1: Double { get }
var NSFoundationVersionNumber10_1_1: Double { get }
var NSFoundationVersionNumber10_1_2: Double { get }
var NSFoundationVersionNumber10_1_3: Double { get }
var NSFoundationVersionNumber10_1_4: Double { get }
var NSFoundationVersionNumber10_2: Double { get }
var NSFoundationVersionNumber10_2_1: Double { get }
var NSFoundationVersionNumber10_2_2: Double { get }
var NSFoundationVersionNumber10_2_3: Double { get }
var NSFoundationVersionNumber10_2_4: Double { get }
var NSFoundationVersionNumber10_2_5: Double { get }
var NSFoundationVersionNumber10_2_6: Double { get }
var NSFoundationVersionNumber10_2_7: Double { get }
var NSFoundationVersionNumber10_2_8: Double { get }
var NSFoundationVersionNumber10_3: Double { get }
var NSFoundationVersionNumber10_3_1: Double { get }
var NSFoundationVersionNumber10_3_2: Double { get }
var NSFoundationVersionNumber10_3_3: Double { get }
var NSFoundationVersionNumber10_3_4: Double { get }
var NSFoundationVersionNumber10_3_5: Double { get }
var NSFoundationVersionNumber10_3_6: Double { get }
var NSFoundationVersionNumber10_3_7: Double { get }
var NSFoundationVersionNumber10_3_8: Double { get }
var NSFoundationVersionNumber10_3_9: Double { get }
var NSFoundationVersionNumber10_4: Double { get }
var NSFoundationVersionNumber10_4_1: Double { get }
var NSFoundationVersionNumber10_4_2: Double { get }
var NSFoundationVersionNumber10_4_3: Double { get }
var NSFoundationVersionNumber10_4_4_Intel: Double { get }
var NSFoundationVersionNumber10_4_4_PowerPC: Double { get }
var NSFoundationVersionNumber10_4_5: Double { get }
var NSFoundationVersionNumber10_4_6: Double { get }
var NSFoundationVersionNumber10_4_7: Double { get }
var NSFoundationVersionNumber10_4_8: Double { get }
var NSFoundationVersionNumber10_4_9: Double { get }
var NSFoundationVersionNumber10_4_10: Double { get }
var NSFoundationVersionNumber10_4_11: Double { get }
var NSFoundationVersionNumber10_5: Double { get }
var NSFoundationVersionNumber10_5_1: Double { get }
var NSFoundationVersionNumber10_5_2: Double { get }
var NSFoundationVersionNumber10_5_3: Double { get }
var NSFoundationVersionNumber10_5_4: Double { get }
var NSFoundationVersionNumber10_5_5: Double { get }
var NSFoundationVersionNumber10_5_6: Double { get }
var NSFoundationVersionNumber10_5_7: Double { get }
var NSFoundationVersionNumber10_5_8: Double { get }
var NSFoundationVersionNumber10_6: Double { get }
var NSFoundationVersionNumber10_6_1: Double { get }
var NSFoundationVersionNumber10_6_2: Double { get }
var NSFoundationVersionNumber10_6_3: Double { get }
var NSFoundationVersionNumber10_6_4: Double { get }
var NSFoundationVersionNumber10_6_5: Double { get }
var NSFoundationVersionNumber10_6_6: Double { get }
var NSFoundationVersionNumber10_6_7: Double { get }
var NSFoundationVersionNumber10_6_8: Double { get }
var NSFoundationVersionNumber10_7: Double { get }
var NSFoundationVersionNumber10_7_1: Double { get }
var NSFoundationVersionNumber10_7_2: Double { get }
var NSFoundationVersionNumber10_7_3: Double { get }
var NSFoundationVersionNumber10_7_4: Double { get }
var NSFoundationVersionNumber10_8: Double { get }
var NSFoundationVersionNumber10_8_1: Double { get }
var NSFoundationVersionNumber10_8_2: Double { get }
var NSFoundationVersionNumber10_8_3: Double { get }
var NSFoundationVersionNumber10_8_4: Double { get }
var NSFoundationVersionNumber10_9: Int32 { get }
var NSFoundationVersionNumber10_9_1: Int32 { get }
var NSFoundationVersionNumber10_9_2: Double { get }
var NSFoundationVersionNumber10_10: Double { get }
var NSFoundationVersionNumber10_10_1: Double { get }
var NSFoundationVersionNumber10_10_2: Double { get }
var NSFoundationVersionNumber10_10_3: Double { get }
var NSFoundationVersionNumber10_10_4: Double { get }
var NSFoundationVersionNumber10_10_5: Int32 { get }
var NSFoundationVersionNumber10_10_Max: Int32 { get }
var NSFoundationVersionNumber10_11: Int32 { get }
var NSFoundationVersionNumber10_11_1: Double { get }
var NSFoundationVersionNumber10_11_2: Double { get }
var NSFoundationVersionNumber10_11_3: Double { get }
var NSFoundationVersionNumber10_11_4: Int32 { get }
var NSFoundationVersionNumber10_11_Max: Int32 { get }
struct NSExceptionName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension RunLoop {
  struct Mode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
func NSStringFromSelector(_ aSelector: Selector) -> String
func NSSelectorFromString(_ aSelectorName: String) -> Selector
func NSStringFromClass(_ aClass: AnyClass) -> String
func NSClassFromString(_ aClassName: String) -> AnyClass?
@available(macOS 10.5, *)
func NSStringFromProtocol(_ proto: Protocol) -> String
@available(macOS 10.5, *)
func NSProtocolFromString(_ namestr: String) -> Protocol?
func NSGetSizeAndAlignment(_ typePtr: UnsafePointer<CChar>, _ sizep: UnsafeMutablePointer<Int>?, _ alignp: UnsafeMutablePointer<Int>?) -> UnsafePointer<CChar>
func NSLogv(_ format: String, _ args: CVaListPointer)
@frozen enum ComparisonResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case orderedAscending
  case orderedSame
  case orderedDescending
}
typealias Comparator = (Any, Any) -> ComparisonResult
struct NSEnumerationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var concurrent: NSEnumerationOptions { get }
  static var reverse: NSEnumerationOptions { get }
}
struct NSSortOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var concurrent: NSSortOptions { get }
  static var stable: NSSortOptions { get }
}
@available(macOS 10.10, *)
enum QualityOfService : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case userInteractive
  case userInitiated
  case utility
  case background
  case `default`
}
let NSNotFound: Int
