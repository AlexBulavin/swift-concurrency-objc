
@available(watchOS 3.2, *)
class INGetCarLockStatusIntent : INIntent {
  init(carName: INSpeakableString?)
  @NSCopying var carName: INSpeakableString? { get }
}
@available(watchOS 3.2, *)
protocol INGetCarLockStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INGetCarLockStatusIntent, completion: @escaping (INGetCarLockStatusIntentResponse) -> Void)
  optional func confirm(intent: INGetCarLockStatusIntent, completion: @escaping (INGetCarLockStatusIntentResponse) -> Void)
  optional func resolveCarName(for intent: INGetCarLockStatusIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
