
@available(watchOS 3.2, *)
class INPersonResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPerson: INPerson) -> Self
  class func disambiguation(with peopleToDisambiguate: [INPerson]) -> Self
  class func confirmationRequired(with personToConfirm: INPerson?) -> Self
}
