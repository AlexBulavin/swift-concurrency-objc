
@available(watchOS 3.2, *)
enum INSendPaymentIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureCredentialsUnverified
  case failurePaymentsAmountBelowMinimum
  case failurePaymentsAmountAboveMaximum
  case failurePaymentsCurrencyUnsupported
  case failureInsufficientFunds
  case failureNoBankAccount
  @available(watchOS 4.0, *)
  case failureNotEligible
  @available(watchOS 4.1, *)
  case failureTermsAndConditionsAcceptanceRequired
}
@available(watchOS 3.2, *)
class INSendPaymentIntentResponse : INIntentResponse {
  init(code: INSendPaymentIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSendPaymentIntentResponseCode { get }
  @NSCopying var paymentRecord: INPaymentRecord?
}
