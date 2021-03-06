
@available(iOS 9.0, *)
let HKDevicePropertyKeyName: String
@available(iOS 9.0, *)
let HKDevicePropertyKeyManufacturer: String
@available(iOS 9.0, *)
let HKDevicePropertyKeyModel: String
@available(iOS 9.0, *)
let HKDevicePropertyKeyHardwareVersion: String
@available(iOS 9.0, *)
let HKDevicePropertyKeyFirmwareVersion: String
@available(iOS 9.0, *)
let HKDevicePropertyKeySoftwareVersion: String
@available(iOS 9.0, *)
let HKDevicePropertyKeyLocalIdentifier: String
@available(iOS 9.0, *)
let HKDevicePropertyKeyUDIDeviceIdentifier: String
@available(iOS 9.0, *)
class HKDevice : NSObject, NSSecureCoding, NSCopying {
  var name: String? { get }
  var manufacturer: String? { get }
  var model: String? { get }
  var hardwareVersion: String? { get }
  var firmwareVersion: String? { get }
  var softwareVersion: String? { get }
  var localIdentifier: String? { get }
  var udiDeviceIdentifier: String? { get }
  init(name: String?, manufacturer: String?, model: String?, hardwareVersion: String?, firmwareVersion: String?, softwareVersion: String?, localIdentifier: String?, udiDeviceIdentifier UDIDeviceIdentifier: String?)
  class func local() -> HKDevice
}
