
class CGColorSpace : _CFObject {
}

extension CGColorSpace {
  var colorTable: [UInt8]? { get }
}
enum CGColorRenderingIntent : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case defaultIntent
  case absoluteColorimetric
  case relativeColorimetric
  case perceptual
  case saturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case monochrome
  case rgb
  case cmyk
  case lab
  case deviceN
  case indexed
  case pattern
  case XYZ
}
var CG_HDR_BT_2100: Int32 { get }
extension CGColorSpace {
  @available(iOS 9.0, *)
  class let genericCMYK: CFString
  @available(iOS 9.3, *)
  class let displayP3: CFString
  @available(iOS 9.0, *)
  class let genericRGBLinear: CFString
  @available(iOS 9.0, *)
  class let adobeRGB1998: CFString
  @available(iOS 9.0, *)
  class let sRGB: CFString
  @available(iOS 9.0, *)
  class let genericGrayGamma2_2: CFString
  @available(iOS 9.0, *)
  class let genericXYZ: CFString
  @available(iOS 11.0, *)
  class let genericLab: CFString
  @available(iOS 9.0, *)
  class let acescgLinear: CFString
  @available(iOS 9.0, *)
  class let itur_709: CFString
  @available(iOS 9.0, *)
  class let itur_2020: CFString
  @available(iOS 9.0, *)
  class let rommrgb: CFString
  @available(iOS 9.0, *)
  class let dcip3: CFString
  @available(iOS 14.0, *)
  class let extendedITUR_2020: CFString
  @available(iOS 12.3, *)
  class let extendedLinearITUR_2020: CFString
  @available(iOS 14.0, *)
  class let extendedDisplayP3: CFString
  @available(iOS 12.3, *)
  class let extendedLinearDisplayP3: CFString
  @available(iOS 13.4, *)
  class let displayP3_PQ: CFString
  @available(iOS 12.6, *)
  class let displayP3_HLG: CFString
  @available(iOS, introduced: 13.4, deprecated: 14.0, message: "No longer supported")
  class let itur_2020_PQ: CFString
  @available(iOS, introduced: 12.6, deprecated: 14.0, message: "No longer supported")
  class let itur_2020_HLG: CFString
  @available(iOS, introduced: 12.6, deprecated: 13.4, message: "No longer supported")
  class let displayP3_PQ_EOTF: CFString
  @available(iOS, introduced: 12.6, deprecated: 13.4, message: "No longer supported")
  class let itur_2020_PQ_EOTF: CFString
  @available(iOS 10.0, *)
  class let extendedSRGB: CFString
  @available(iOS 10.0, *)
  class let linearSRGB: CFString
  @available(iOS 10.0, *)
  class let extendedLinearSRGB: CFString
  @available(iOS 10.0, *)
  class let extendedGray: CFString
  @available(iOS 10.0, *)
  class let linearGray: CFString
  @available(iOS 10.0, *)
  class let extendedLinearGray: CFString
  @available(iOS 2.0, *)
  /*not inherited*/ init?(calibratedGrayWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, gamma: CGFloat)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(calibratedRGBWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, gamma: UnsafePointer<CGFloat>?, matrix: UnsafePointer<CGFloat>?)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(labWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, range: UnsafePointer<CGFloat>?)
  @available(iOS 10.0, *)
  /*not inherited*/ init?(iccData data: CFTypeRef)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(iccBasedNComponents nComponents: Int, range: UnsafePointer<CGFloat>?, profile: CGDataProvider, alternate: CGColorSpace?)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(indexedBaseSpace baseSpace: CGColorSpace, last lastIndex: Int, colorTable: UnsafePointer<UInt8>)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(patternBaseSpace baseSpace: CGColorSpace?)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(platformColorSpaceRef ref: UnsafeRawPointer)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(name: CFString)
  @available(iOS 11.0, *)
  var __name: CFString? { get }
  @available(iOS 10.0, *)
  var name: CFString? { get }
  @available(iOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(iOS 2.0, *)
  var numberOfComponents: Int { get }
  @available(iOS 2.0, *)
  var model: CGColorSpaceModel { get }
  @available(iOS 2.0, *)
  var baseColorSpace: CGColorSpace? { get }
  @available(iOS 2.0, *)
  var __colorTableCount: Int { get }
  @available(iOS 2.0, *)
  func __unsafeGetColorTable(_ table: UnsafeMutablePointer<UInt8>)
  @available(iOS 10.0, *)
  func copyICCData() -> CFData?
  @available(iOS 10.0, *)
  var isWideGamutRGB: Bool { get }
  @available(iOS, introduced: 13.0, deprecated: 13.4, message: "No longer supported")
  func isHDR() -> Bool
  @available(iOS 10.0, *)
  var supportsOutput: Bool { get }
  @available(iOS 10.0, *)
  func copyPropertyList() -> CFPropertyList?
  @available(iOS 10.0, *)
  /*not inherited*/ init?(propertyListPlist plist: CFPropertyList)
  @available(iOS, introduced: 2.0, deprecated: 11.0, message: "No longer supported")
  /*not inherited*/ init?(iccProfileData data: CFData)
  @available(iOS, introduced: 2.0, deprecated: 11.0, message: "No longer supported")
  var iccData: CFData? { get }
}
@available(iOS 14.0, *)
let kCGColorSpaceITUR_2100_PQ: CFString
@available(iOS 14.0, *)
let kCGColorSpaceITUR_2100_HLG: CFString
@available(iOS 2.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace
@available(iOS 2.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace
@available(iOS 2.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace
@available(iOS 14.0, *)
func CGColorSpaceUsesITUR_2100TF(_: CGColorSpace) -> Bool
@available(iOS 10.0, *)
func CGColorSpaceUsesExtendedRange(_ space: CGColorSpace) -> Bool
@available(iOS 14.0, *)
func CGColorSpaceCreateLinearized(_ space: CGColorSpace) -> CGColorSpace?
@available(iOS 14.0, *)
func CGColorSpaceCreateExtended(_ space: CGColorSpace) -> CGColorSpace?
@available(iOS 14.0, *)
func CGColorSpaceCreateExtendedLinearized(_ space: CGColorSpace) -> CGColorSpace?
