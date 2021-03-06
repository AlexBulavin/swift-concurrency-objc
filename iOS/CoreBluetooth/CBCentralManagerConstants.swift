
@available(iOS 7.0, *)
let CBCentralManagerOptionShowPowerAlertKey: String
@available(iOS 7.0, *)
let CBCentralManagerOptionRestoreIdentifierKey: String
let CBCentralManagerScanOptionAllowDuplicatesKey: String
@available(iOS 7.0, *)
let CBCentralManagerScanOptionSolicitedServiceUUIDsKey: String
@available(iOS 6.0, *)
let CBConnectPeripheralOptionNotifyOnConnectionKey: String
let CBConnectPeripheralOptionNotifyOnDisconnectionKey: String
@available(iOS 6.0, *)
let CBConnectPeripheralOptionNotifyOnNotificationKey: String
@available(iOS 6.0, *)
let CBConnectPeripheralOptionStartDelayKey: String
@available(iOS 13.0, *)
let CBConnectPeripheralOptionEnableTransportBridgingKey: String
@available(iOS 13.0, *)
let CBConnectPeripheralOptionRequiresANCS: String
@available(iOS 7.0, *)
let CBCentralManagerRestoredStatePeripheralsKey: String
@available(iOS 7.0, *)
let CBCentralManagerRestoredStateScanServicesKey: String
@available(iOS 7.0, *)
let CBCentralManagerRestoredStateScanOptionsKey: String
struct CBConnectionEventMatchingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CBConnectionEventMatchingOption {
  @available(iOS 13.0, *)
  static let serviceUUIDs: CBConnectionEventMatchingOption
  @available(iOS 13.0, *)
  static let peripheralUUIDs: CBConnectionEventMatchingOption
}
