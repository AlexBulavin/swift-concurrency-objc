
@available(iOS 10.0, *)
class INIntentResolutionResult : NSObject {
  class func needsValue() -> Self
  class func notRequired() -> Self
  class func unsupported() -> Self
}
