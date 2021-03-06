
var kCMSampleBufferError_AllocationFailed: OSStatus { get }
var kCMSampleBufferError_RequiredParameterMissing: OSStatus { get }
var kCMSampleBufferError_AlreadyHasDataBuffer: OSStatus { get }
var kCMSampleBufferError_BufferNotReady: OSStatus { get }
var kCMSampleBufferError_SampleIndexOutOfRange: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleSizes: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleTimingInfo: OSStatus { get }
var kCMSampleBufferError_ArrayTooSmall: OSStatus { get }
var kCMSampleBufferError_InvalidEntryCount: OSStatus { get }
var kCMSampleBufferError_CannotSubdivide: OSStatus { get }
var kCMSampleBufferError_SampleTimingInfoInvalid: OSStatus { get }
var kCMSampleBufferError_InvalidMediaTypeForOperation: OSStatus { get }
var kCMSampleBufferError_InvalidSampleData: OSStatus { get }
var kCMSampleBufferError_InvalidMediaFormat: OSStatus { get }
var kCMSampleBufferError_Invalidated: OSStatus { get }
var kCMSampleBufferError_DataFailed: OSStatus { get }
var kCMSampleBufferError_DataCanceled: OSStatus { get }
var kCMSampleBufferFlag_AudioBufferList_Assure16ByteAlignment: UInt32 { get }
@available(watchOS 6.0, *)
class CMSampleBuffer : _CFObject {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMSampleBuffer : CMAttachmentBearerProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMSampleBuffer : _CMSampleBufferInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let allocationFailed: NSError
    static let requiredParameterMissing: NSError
    static let alreadyHasDataBuffer: NSError
    static let bufferNotReady: NSError
    static let sampleIndexOutOfRange: NSError
    static let bufferHasNoSampleSizes: NSError
    static let bufferHasNoSampleTimingInfo: NSError
    static let arrayTooSmall: NSError
    static let invalidEntryCount: NSError
    static let cannotSubdivide: NSError
    static let sampleTimingInfoInvalid: NSError
    static let invalidMediaTypeForOperation: NSError
    static let invalidSampleData: NSError
    static let invalidMediaFormat: NSError
    static let invalidated: NSError
    static let dataFailed: NSError
    static let dataCanceled: NSError
  }
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Flags : OptionSet {
    static let audioBufferListAssure16ByteAlignment: CMSampleBuffer.Flags
  }
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setDataBuffer(_ dataBuffer: CMBlockBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var dataBuffer: CMBlockBuffer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var imageBuffer: CVImageBuffer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setDataBuffer(fromAudioBufferList bufferList: UnsafePointer<AudioBufferList>, blockBufferMemoryAllocator: CFAllocator? = kCFAllocatorDefault, flags: CMSampleBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withAudioBufferList<R>(blockBufferMemoryAllocator: CFAllocator? = kCFAllocatorDefault, flags: CMSampleBuffer.Flags = [], body: (UnsafeMutableAudioBufferListPointer, CMBlockBuffer) throws -> R) throws -> R
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func audioStreamPacketDescriptions() throws -> [AudioStreamPacketDescription]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withUnsafeAudioStreamPacketDescriptions<R>(_ body: (UnsafeBufferPointer<AudioStreamPacketDescription>) throws -> R) throws -> R
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func copyPCMData(fromRange range: Range<Int>, into bufferList: UnsafeMutablePointer<AudioBufferList>) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  enum DataReadiness : Hashable {
    case notReady
    case ready
    case failed(OSStatus)
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var dataReadiness: CMSampleBuffer.DataReadiness { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setDataReadiness(_ newValue: CMSampleBuffer.DataReadiness) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func makeDataReady() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func trackDataReadiness(_ sampleBufferToTrack: CMSampleBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func invalidate() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setInvalidateHandler(_ body: @escaping (CMSampleBuffer) throws -> Void) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isValid: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var numSamples: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var duration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var presentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var decodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var outputDuration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var outputPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setOutputPresentationTimeStamp(_ pts: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var outputDecodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleTimingInfos() throws -> [CMSampleTimingInfo]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func outputSampleTimingInfos() throws -> [CMSampleTimingInfo]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleTimingInfo(at sampleIndex: CMItemIndex) throws -> CMSampleTimingInfo
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleSizes() throws -> [Int]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleSize(at sampleIndex: Int) -> Int
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var totalSampleSize: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var formatDescription: CMFormatDescription? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct PerSampleAttachmentsDictionary : Sequence {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    struct Key : _CMObjectiveCBridgeableWithRawValue {
      static let notSync: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let partialSync: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hasRedundantCoding: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let isDependedOnByOthers: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let dependsOnOthers: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let earlierDisplayTimesAllowed: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let displayImmediately: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let doNotDisplay: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcTemporalLevelInfo: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcTemporalSubLayerAccess: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcStepwiseTemporalSubLayerAccess: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcSyncSampleNALUnitType: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let audioIndependentSampleDecoderRefreshCount: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
    }
    subscript(key: CMSampleBuffer.PerSampleAttachmentsDictionary.Key) -> Any?
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct SampleAttachmentsArray : Collection {
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var sampleAttachments: CMSampleBuffer.SampleAttachmentsArray
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct SingleSampleBuffers : Sequence {
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func singleSampleBuffers() throws -> CMSampleBuffer.SingleSampleBuffers
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct AttachmentKey : _CMObjectiveCBridgeableWithRawValue {
    static let resetDecoderBeforeDecoding: CMSampleBuffer.AttachmentKey
    static let drainAfterDecoding: CMSampleBuffer.AttachmentKey
    static let postNotificationWhenConsumed: CMSampleBuffer.AttachmentKey
    static let resumeOutput: CMSampleBuffer.AttachmentKey
    static let transitionID: CMSampleBuffer.AttachmentKey
    static let trimDurationAtStart: CMSampleBuffer.AttachmentKey
    static let trimDurationAtEnd: CMSampleBuffer.AttachmentKey
    static let speedMultiplier: CMSampleBuffer.AttachmentKey
    static let reverse: CMSampleBuffer.AttachmentKey
    static let fillDiscontinuitiesWithSilence: CMSampleBuffer.AttachmentKey
    static let emptyMedia: CMSampleBuffer.AttachmentKey
    static let permanentEmptyMedia: CMSampleBuffer.AttachmentKey
    static let displayEmptyMediaImmediately: CMSampleBuffer.AttachmentKey
    static let endsPreviousSampleDuration: CMSampleBuffer.AttachmentKey
    static let sampleReferenceURL: CMSampleBuffer.AttachmentKey
    static let sampleReferenceByteOffset: CMSampleBuffer.AttachmentKey
    static let gradualDecoderRefresh: CMSampleBuffer.AttachmentKey
    static let droppedFrameReason: CMSampleBuffer.AttachmentKey
    static let droppedFrameReasonInfo: CMSampleBuffer.AttachmentKey
    static let stillImageLensStabilizationInfo: CMSampleBuffer.AttachmentKey
    static let cameraIntrinsicMatrix: CMSampleBuffer.AttachmentKey
    static let forceKeyFrame: CMSampleBuffer.AttachmentKey
  }
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let dataBecameReady: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let dataFailed: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct NotificationKey : _CMObjectiveCBridgeableWithRawValue {
    static let status: CMSampleBuffer.NotificationKey
  }
}
@available(watchOS 6.0, *)
struct CMSampleTimingInfo {
  var duration: CMTime
  var presentationTimeStamp: CMTime
  var decodeTimeStamp: CMTime
  init()
  init(duration: CMTime, presentationTimeStamp: CMTime, decodeTimeStamp: CMTime)
}
extension CMSampleTimingInfo {
  @available(watchOS 6.0, *)
  static let invalid: CMSampleTimingInfo
}
@available(watchOS 6.0, *)
typealias CMSampleBufferMakeDataReadyCallback = @convention(c) (CMSampleBuffer, UnsafeMutableRawPointer?) -> OSStatus
@available(watchOS 6.0, *)
typealias CMSampleBufferMakeDataReadyHandler = (CMSampleBuffer) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreate(allocator: CFAllocator?, dataBuffer: CMBlockBuffer?, dataReady: Bool, makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, refcon makeDataReadyRefcon: UnsafeMutableRawPointer?, formatDescription: CMFormatDescription?, sampleCount numSamples: CMItemCount, sampleTimingEntryCount numSampleTimingEntries: CMItemCount, sampleTimingArray: UnsafePointer<CMSampleTimingInfo>?, sampleSizeEntryCount numSampleSizeEntries: CMItemCount, sampleSizeArray: UnsafePointer<Int>?, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreateWithMakeDataReadyHandler(_ allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ formatDescription: CMFormatDescription?, _ numSamples: CMItemCount, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>?, _ numSampleSizeEntries: CMItemCount, _ sampleSizeArray: UnsafePointer<Int>?, _ sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>, _ makeDataReadyHandler: CMSampleBufferMakeDataReadyHandler?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreateReady(allocator: CFAllocator?, dataBuffer: CMBlockBuffer?, formatDescription: CMFormatDescription?, sampleCount numSamples: CMItemCount, sampleTimingEntryCount numSampleTimingEntries: CMItemCount, sampleTimingArray: UnsafePointer<CMSampleTimingInfo>?, sampleSizeEntryCount numSampleSizeEntries: CMItemCount, sampleSizeArray: UnsafePointer<Int>?, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMAudioSampleBufferCreateWithPacketDescriptions(allocator: CFAllocator?, dataBuffer: CMBlockBuffer?, dataReady: Bool, makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, refcon makeDataReadyRefcon: UnsafeMutableRawPointer?, formatDescription: CMFormatDescription, sampleCount numSamples: CMItemCount, presentationTimeStamp: CMTime, packetDescriptions: UnsafePointer<AudioStreamPacketDescription>?, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMAudioSampleBufferCreateWithPacketDescriptionsAndMakeDataReadyHandler(_ allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ formatDescription: CMFormatDescription, _ numSamples: CMItemCount, _ presentationTimeStamp: CMTime, _ packetDescriptions: UnsafePointer<AudioStreamPacketDescription>?, _ sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>, _ makeDataReadyHandler: CMSampleBufferMakeDataReadyHandler?) -> OSStatus
@available(watchOS 6.0, *)
func CMAudioSampleBufferCreateReadyWithPacketDescriptions(allocator: CFAllocator?, dataBuffer: CMBlockBuffer, formatDescription: CMFormatDescription, sampleCount numSamples: CMItemCount, presentationTimeStamp: CMTime, packetDescriptions: UnsafePointer<AudioStreamPacketDescription>?, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreateForImageBuffer(allocator: CFAllocator?, imageBuffer: CVImageBuffer, dataReady: Bool, makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, refcon makeDataReadyRefcon: UnsafeMutableRawPointer?, formatDescription: CMVideoFormatDescription, sampleTiming: UnsafePointer<CMSampleTimingInfo>, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreateForImageBufferWithMakeDataReadyHandler(_ allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ dataReady: Bool, _ formatDescription: CMVideoFormatDescription, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>, _ sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>, _ makeDataReadyHandler: CMSampleBufferMakeDataReadyHandler?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreateReadyWithImageBuffer(allocator: CFAllocator?, imageBuffer: CVImageBuffer, formatDescription: CMVideoFormatDescription, sampleTiming: UnsafePointer<CMSampleTimingInfo>, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreateCopy(allocator: CFAllocator?, sampleBuffer sbuf: CMSampleBuffer, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCreateCopyWithNewTiming(allocator: CFAllocator?, sampleBuffer originalSBuf: CMSampleBuffer, sampleTimingEntryCount numSampleTimingEntries: CMItemCount, sampleTimingArray: UnsafePointer<CMSampleTimingInfo>?, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCopySampleBufferForRange(allocator: CFAllocator?, sampleBuffer sbuf: CMSampleBuffer, sampleRange: CFRange, sampleBufferOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetTypeID() -> CFTypeID
@available(watchOS 6.0, *)
func CMSampleBufferSetDataBuffer(_ sbuf: CMSampleBuffer, newValue dataBuffer: CMBlockBuffer) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetDataBuffer(_ sbuf: CMSampleBuffer) -> CMBlockBuffer?
@available(watchOS 6.0, *)
func CMSampleBufferGetImageBuffer(_ sbuf: CMSampleBuffer) -> CVImageBuffer?
@available(watchOS 6.0, *)
func CMSampleBufferSetDataBufferFromAudioBufferList(_ sbuf: CMSampleBuffer, blockBufferAllocator blockBufferStructureAllocator: CFAllocator?, blockBufferMemoryAllocator blockBufferBlockAllocator: CFAllocator?, flags: UInt32, bufferList: UnsafePointer<AudioBufferList>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(_ sbuf: CMSampleBuffer, bufferListSizeNeededOut: UnsafeMutablePointer<Int>?, bufferListOut: UnsafeMutablePointer<AudioBufferList>?, bufferListSize: Int, blockBufferAllocator blockBufferStructureAllocator: CFAllocator?, blockBufferMemoryAllocator blockBufferBlockAllocator: CFAllocator?, flags: UInt32, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetAudioStreamPacketDescriptions(_ sbuf: CMSampleBuffer, allocatedSize packetDescriptionsSize: Int, packetDescriptionsOut: UnsafeMutablePointer<AudioStreamPacketDescription>?, packetDescriptionsSizeNeededOut: UnsafeMutablePointer<Int>?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetAudioStreamPacketDescriptionsPtr(_ sbuf: CMSampleBuffer, packetDescriptionsPointerOut: UnsafeMutablePointer<UnsafePointer<AudioStreamPacketDescription>?>?, sizeOut packetDescriptionsSizeOut: UnsafeMutablePointer<Int>?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCopyPCMDataIntoAudioBufferList(_ sbuf: CMSampleBuffer, at frameOffset: Int32, frameCount numFrames: Int32, into bufferList: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferSetDataReady(_ sbuf: CMSampleBuffer) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferDataIsReady(_ sbuf: CMSampleBuffer) -> Bool
@available(watchOS 6.0, *)
func CMSampleBufferSetDataFailed(_ sbuf: CMSampleBuffer, status: OSStatus) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferHasDataFailed(_ sbuf: CMSampleBuffer, statusOut: UnsafeMutablePointer<OSStatus>?) -> Bool
@available(watchOS 6.0, *)
func CMSampleBufferMakeDataReady(_ sbuf: CMSampleBuffer) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferTrackDataReadiness(_ sbuf: CMSampleBuffer, sampleBufferToTrack: CMSampleBuffer) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferInvalidate(_ sbuf: CMSampleBuffer) -> OSStatus
@available(watchOS 6.0, *)
typealias CMSampleBufferInvalidateCallback = @convention(c) (CMSampleBuffer, UInt64) -> Void
@available(watchOS 6.0, *)
func CMSampleBufferSetInvalidateCallback(_ sbuf: CMSampleBuffer, callback invalidateCallback: CMSampleBufferInvalidateCallback, refcon invalidateRefCon: UInt64) -> OSStatus
@available(watchOS 6.0, *)
typealias CMSampleBufferInvalidateHandler = (CMSampleBuffer) -> Void
@available(watchOS 6.0, *)
func CMSampleBufferSetInvalidateHandler(_ sbuf: CMSampleBuffer, invalidateHandler: @escaping CMSampleBufferInvalidateHandler) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferIsValid(_ sbuf: CMSampleBuffer) -> Bool
@available(watchOS 6.0, *)
let kCMSampleBufferNotification_DataBecameReady: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferNotification_DataFailed: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferNotificationParameter_OSStatus: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConduitNotification_InhibitOutputUntil: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConduitNotificationParameter_ResumeTag: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConduitNotification_ResetOutput: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConduitNotificationParameter_UpcomingOutputPTSRangeMayOverlapQueuedOutputPTSRange: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConduitNotificationParameter_MinUpcomingOutputPTS: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConduitNotificationParameter_MaxUpcomingOutputPTS: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferConsumerNotification_BufferConsumed: CFString
@available(watchOS 6.0, *)
func CMSampleBufferGetNumSamples(_ sbuf: CMSampleBuffer) -> CMItemCount
@available(watchOS 6.0, *)
func CMSampleBufferGetDuration(_ sbuf: CMSampleBuffer) -> CMTime
@available(watchOS 6.0, *)
func CMSampleBufferGetPresentationTimeStamp(_ sbuf: CMSampleBuffer) -> CMTime
@available(watchOS 6.0, *)
func CMSampleBufferGetDecodeTimeStamp(_ sbuf: CMSampleBuffer) -> CMTime
@available(watchOS 6.0, *)
func CMSampleBufferGetOutputDuration(_ sbuf: CMSampleBuffer) -> CMTime
@available(watchOS 6.0, *)
func CMSampleBufferGetOutputPresentationTimeStamp(_ sbuf: CMSampleBuffer) -> CMTime
@available(watchOS 6.0, *)
func CMSampleBufferSetOutputPresentationTimeStamp(_ sbuf: CMSampleBuffer, newValue outputPresentationTimeStamp: CMTime) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetOutputDecodeTimeStamp(_ sbuf: CMSampleBuffer) -> CMTime
@available(watchOS 6.0, *)
func CMSampleBufferGetSampleTimingInfoArray(_ sbuf: CMSampleBuffer, entryCount numSampleTimingEntries: CMItemCount, arrayToFill timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>?, entriesNeededOut timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetOutputSampleTimingInfoArray(_ sbuf: CMSampleBuffer, entryCount timingArrayEntries: CMItemCount, arrayToFill timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>?, entriesNeededOut timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetSampleTimingInfo(_ sbuf: CMSampleBuffer, at sampleIndex: CMItemIndex, timingInfoOut: UnsafeMutablePointer<CMSampleTimingInfo>) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetSampleSizeArray(_ sbuf: CMSampleBuffer, entryCount sizeArrayEntries: CMItemCount, arrayToFill sizeArrayOut: UnsafeMutablePointer<Int>?, entriesNeededOut sizeArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferGetSampleSize(_ sbuf: CMSampleBuffer, at sampleIndex: CMItemIndex) -> Int
@available(watchOS 6.0, *)
func CMSampleBufferGetTotalSampleSize(_ sbuf: CMSampleBuffer) -> Int
@available(watchOS 6.0, *)
func CMSampleBufferGetFormatDescription(_ sbuf: CMSampleBuffer) -> CMFormatDescription?
@available(watchOS 6.0, *)
func CMSampleBufferGetSampleAttachmentsArray(_ sbuf: CMSampleBuffer, createIfNecessary: Bool) -> CFArray?
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_NotSync: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_PartialSync: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_HasRedundantCoding: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_IsDependedOnByOthers: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_DependsOnOthers: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_EarlierDisplayTimesAllowed: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_DisplayImmediately: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_DoNotDisplay: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_ResetDecoderBeforeDecoding: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_DrainAfterDecoding: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_ResumeOutput: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_HEVCTemporalLevelInfo: CFString
@available(watchOS 6.0, *)
let kCMHEVCTemporalLevelInfoKey_TemporalLevel: CFString
@available(watchOS 6.0, *)
let kCMHEVCTemporalLevelInfoKey_ProfileSpace: CFString
@available(watchOS 6.0, *)
let kCMHEVCTemporalLevelInfoKey_TierFlag: CFString
@available(watchOS 6.0, *)
let kCMHEVCTemporalLevelInfoKey_ProfileIndex: CFString
@available(watchOS 6.0, *)
let kCMHEVCTemporalLevelInfoKey_ProfileCompatibilityFlags: CFString
@available(watchOS 6.0, *)
let kCMHEVCTemporalLevelInfoKey_ConstraintIndicatorFlags: CFString
@available(watchOS 6.0, *)
let kCMHEVCTemporalLevelInfoKey_LevelIndex: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_HEVCTemporalSubLayerAccess: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_HEVCStepwiseTemporalSubLayerAccess: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_HEVCSyncSampleNALUnitType: CFString
@available(watchOS 6.0, *)
let kCMSampleAttachmentKey_AudioIndependentSampleDecoderRefreshCount: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_TransitionID: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_TrimDurationAtStart: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_TrimDurationAtEnd: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_SpeedMultiplier: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_Reverse: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_EmptyMedia: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_PermanentEmptyMedia: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_SampleReferenceURL: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_SampleReferenceByteOffset: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_GradualDecoderRefresh: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_DroppedFrameReason: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferDroppedFrameReason_FrameWasLate: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferDroppedFrameReason_OutOfBuffers: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferDroppedFrameReason_Discontinuity: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferDroppedFrameReasonInfo_CameraModeSwitch: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferLensStabilizationInfo_Active: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferLensStabilizationInfo_OutOfRange: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferLensStabilizationInfo_Unavailable: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferLensStabilizationInfo_Off: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_CameraIntrinsicMatrix: CFString
@available(watchOS 6.0, *)
let kCMSampleBufferAttachmentKey_ForceKeyFrame: CFString
@available(watchOS 6.0, *)
func CMSampleBufferCallForEachSample(_ sbuf: CMSampleBuffer, callback: @convention(c) (CMSampleBuffer, CMItemCount, UnsafeMutableRawPointer?) -> OSStatus, refcon: UnsafeMutableRawPointer?) -> OSStatus
@available(watchOS 6.0, *)
func CMSampleBufferCallBlockForEachSample(_ sbuf: CMSampleBuffer, _ handler: (CMSampleBuffer, CMItemCount) -> OSStatus) -> OSStatus
