
@available(tvOS 9.0, *)
class CIImageAccumulator : NSObject {
  init?(extent: CGRect, format: CIFormat)
  @available(tvOS 9.0, *)
  init?(extent: CGRect, format: CIFormat, colorSpace: CGColorSpace)
  var extent: CGRect { get }
  var format: CIFormat { get }
  func image() -> CIImage
  func setImage(_ image: CIImage)
  func setImage(_ image: CIImage, dirtyRect: CGRect)
  func clear()
}
