
@available(tvOS 9.0, *)
class UIFieldBehavior : UIDynamicBehavior {
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var position: CGPoint
  var region: UIRegion
  var strength: CGFloat
  var falloff: CGFloat
  var minimumRadius: CGFloat
  var direction: CGVector
  var smoothness: CGFloat
  var animationSpeed: CGFloat
  class func dragField() -> Self
  class func vortexField() -> Self
  class func radialGravityField(position: CGPoint) -> Self
  class func linearGravityField(direction: CGVector) -> Self
  class func velocityField(direction: CGVector) -> Self
  class func noiseField(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self
  class func turbulenceField(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self
  class func springField() -> Self
  class func electricField() -> Self
  class func magneticField() -> Self
  class func field(evaluationBlock block: @escaping (UIFieldBehavior, CGPoint, CGVector, CGFloat, CGFloat, TimeInterval) -> CGVector) -> Self
}
