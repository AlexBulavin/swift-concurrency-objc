
@available(watchOS 6.0, *)
enum INStartCallIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case userConfirmationRequired
  case failure
  case failureRequiringAppLaunch
  case failureCallingServiceNotAvailable
  case failureContactNotSupportedByApp
  case failureAirplaneModeEnabled
  case failureUnableToHandOff
  case failureAppConfigurationRequired
  case failureCallInProgress
}
@available(watchOS 6.0, *)
class INStartCallIntentResponse : INIntentResponse {
  init(code: INStartCallIntentResponseCode, userActivity: NSUserActivity?)
  var code: INStartCallIntentResponseCode { get }
}
