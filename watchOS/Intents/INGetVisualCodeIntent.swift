
@available(watchOS 4.0, *)
class INGetVisualCodeIntent : INIntent {
  init(visualCodeType: INVisualCodeType)
  var visualCodeType: INVisualCodeType { get }
}
@available(watchOS 4.0, *)
protocol INGetVisualCodeIntentHandling : NSObjectProtocol {
  func handle(intent: INGetVisualCodeIntent, completion: @escaping (INGetVisualCodeIntentResponse) -> Void)
  optional func confirm(intent: INGetVisualCodeIntent, completion: @escaping (INGetVisualCodeIntentResponse) -> Void)
  optional func resolveVisualCodeType(for intent: INGetVisualCodeIntent, with completion: @escaping (INVisualCodeTypeResolutionResult) -> Void)
}
