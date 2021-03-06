
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "Inter-App Audio API is deprecated in favor of Audio Units")
class CAInterAppAudioTransportView : UIView {
  var isEnabled: Bool
  var isPlaying: Bool { get }
  var isRecording: Bool { get }
  var isConnected: Bool { get }
  var labelColor: UIColor
  var currentTimeLabelFont: UIFont
  var rewindButtonColor: UIColor
  var playButtonColor: UIColor
  var pauseButtonColor: UIColor
  var recordButtonColor: UIColor
  func setOutputAudioUnit(_ au: AudioUnit)
}
