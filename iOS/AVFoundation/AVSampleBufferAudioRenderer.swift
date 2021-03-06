
@available(iOS 11.0, *)
class AVSampleBufferAudioRenderer : NSObject, AVQueuedSampleBufferRendering {
  var status: AVQueuedSampleBufferRenderingStatus { get }
  var error: Error? { get }
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
extension AVSampleBufferAudioRenderer {
  var volume: Float
  var isMuted: Bool
}
extension AVSampleBufferAudioRenderer {
  func flush(fromSourceTime time: CMTime, completionHandler: @escaping (Bool) -> Void)
}
extension NSNotification.Name {
  @available(iOS 11.0, *)
  static let AVSampleBufferAudioRendererWasFlushedAutomatically: NSNotification.Name
}
@available(iOS 11.0, *)
let AVSampleBufferAudioRendererFlushTimeKey: String
