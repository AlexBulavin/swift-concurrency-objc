
@available(tvOS 11.0, *)
class HMCharacteristicThresholdRangeEvent : HMEvent, NSCopying, NSMutableCopying {
  init(characteristic: HMCharacteristic, thresholdRange: HMNumberRange)
  var characteristic: HMCharacteristic { get }
  @NSCopying var thresholdRange: HMNumberRange { get }
}
@available(tvOS 11.0, *)
class HMMutableCharacteristicThresholdRangeEvent : HMCharacteristicThresholdRangeEvent {
}
