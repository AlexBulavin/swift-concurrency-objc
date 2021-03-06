
@available(watchOS 2.0, *)
class HMService : NSObject {
  weak var accessory: @sil_weak HMAccessory? { get }
  var serviceType: String { get }
  @available(watchOS 2.0, *)
  var localizedDescription: String { get }
  var name: String { get }
  var associatedServiceType: String? { get }
  var characteristics: [HMCharacteristic] { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
  @available(watchOS 2.0, *)
  var isUserInteractive: Bool { get }
  @available(watchOS 3.0, *)
  var isPrimaryService: Bool { get }
  @available(watchOS 3.0, *)
  var linkedServices: [HMService]? { get }
}
