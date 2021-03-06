
@available(iOS 13.0, *)
enum MTLHeapType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case placement
  case sparse
}
@available(iOS 10.0, *)
class MTLHeapDescriptor : NSObject, NSCopying {
  var size: Int
  var storageMode: MTLStorageMode
  var cpuCacheMode: MTLCPUCacheMode
  @available(iOS 13.0, *)
  var hazardTrackingMode: MTLHazardTrackingMode
  @available(iOS 13.0, *)
  var resourceOptions: MTLResourceOptions
  @available(iOS 13.0, *)
  var type: MTLHeapType
}
@available(iOS 10.0, *)
protocol MTLHeap : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var storageMode: MTLStorageMode { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  @available(iOS 13.0, *)
  var hazardTrackingMode: MTLHazardTrackingMode { get }
  @available(iOS 13.0, *)
  var resourceOptions: MTLResourceOptions { get }
  var size: Int { get }
  var usedSize: Int { get }
  @available(iOS 11.0, *)
  var currentAllocatedSize: Int { get }
  func maxAvailableSize(alignment: Int) -> Int
  func makeBuffer(length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeTexture(descriptor desc: MTLTextureDescriptor) -> MTLTexture?
  func setPurgeableState(_ state: MTLPurgeableState) -> MTLPurgeableState
  @available(iOS 13.0, *)
  var type: MTLHeapType { get }
  @available(iOS 13.0, *)
  func makeBuffer(length: Int, options: MTLResourceOptions = [], offset: Int) -> MTLBuffer?
  @available(iOS 13.0, *)
  func makeTexture(descriptor: MTLTextureDescriptor, offset: Int) -> MTLTexture?
}
