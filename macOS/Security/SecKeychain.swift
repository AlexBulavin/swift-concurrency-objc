
var kSecUnlockStateStatus: UInt32 { get }
var kSecReadPermStatus: UInt32 { get }
var kSecWritePermStatus: UInt32 { get }
var SEC_KEYCHAIN_SETTINGS_VERS1: Int32 { get }
struct SecKeychainSettings {
  var version: UInt32
  var lockOnSleep: DarwinBoolean
  var useLockInterval: DarwinBoolean
  var lockInterval: UInt32
  init()
  init(version: UInt32, lockOnSleep: DarwinBoolean, useLockInterval: DarwinBoolean, lockInterval: UInt32)
}
enum SecAuthenticationType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case NTLM
  case MSN
  case DPA
  case RPA
  case httpBasic
  case httpDigest
  case htmlForm
  case `default`
  case any
}
enum SecProtocolType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case FTP
  case ftpAccount
  case HTTP
  case IRC
  case NNTP
  case POP3
  case SMTP
  case SOCKS
  case IMAP
  case LDAP
  case appleTalk
  case AFP
  case telnet
  case SSH
  case FTPS
  case HTTPS
  case httpProxy
  case httpsProxy
  case ftpProxy
  case CIFS
  case SMB
  case RTSP
  case rtspProxy
  case DAAP
  case EPPC
  case IPP
  case NNTPS
  case LDAPS
  case telnetS
  case IMAPS
  case IRCS
  case POP3S
  case cvSpserver
  case SVN
  case any
}
enum SecKeychainEvent : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case lockEvent
  case unlockEvent
  case addEvent
  case deleteEvent
  case updateEvent
  case passwordChangedEvent
  case defaultChangedEvent
  @available(macOS, introduced: 10.10, deprecated: 10.15, message: "Read events are no longer posted")
  case dataAccessEvent
  case keychainListChangedEvent
  case trustSettingsChangedEvent
}
struct SecKeychainEventMask : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var lockEventMask: SecKeychainEventMask { get }
  static var unlockEventMask: SecKeychainEventMask { get }
  static var addEventMask: SecKeychainEventMask { get }
  static var deleteEventMask: SecKeychainEventMask { get }
  static var updateEventMask: SecKeychainEventMask { get }
  static var passwordChangedEventMask: SecKeychainEventMask { get }
  static var defaultChangedEventMask: SecKeychainEventMask { get }
  @available(macOS, introduced: 10.10, deprecated: 10.15, message: "Read events are no longer posted")
  static var dataAccessEventMask: SecKeychainEventMask { get }
  static var keychainListChangedMask: SecKeychainEventMask { get }
  static var trustSettingsChangedEventMask: SecKeychainEventMask { get }
  static var everyEventMask: SecKeychainEventMask { get }
}
struct SecKeychainCallbackInfo {
  var version: UInt32
  var item: Unmanaged<SecKeychainItem>
  var keychain: Unmanaged<SecKeychain>
  var pid: pid_t
  init(version: UInt32, item: Unmanaged<SecKeychainItem>, keychain: Unmanaged<SecKeychain>, pid: pid_t)
}
func SecKeychainGetTypeID() -> CFTypeID
func SecKeychainGetVersion(_ returnVers: UnsafeMutablePointer<UInt32>) -> OSStatus
func SecKeychainOpen(_ pathName: UnsafePointer<CChar>, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainCreate(_ pathName: UnsafePointer<CChar>, _ passwordLength: UInt32, _ password: UnsafeRawPointer?, _ promptUser: Bool, _ initialAccess: SecAccess?, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainDelete(_ keychainOrArray: SecKeychain?) -> OSStatus
func SecKeychainSetSettings(_ keychain: SecKeychain?, _ newSettings: UnsafePointer<SecKeychainSettings>) -> OSStatus
func SecKeychainCopySettings(_ keychain: SecKeychain?, _ outSettings: UnsafeMutablePointer<SecKeychainSettings>) -> OSStatus
func SecKeychainUnlock(_ keychain: SecKeychain?, _ passwordLength: UInt32, _ password: UnsafeRawPointer?, _ usePassword: Bool) -> OSStatus
func SecKeychainLock(_ keychain: SecKeychain?) -> OSStatus
func SecKeychainLockAll() -> OSStatus
func SecKeychainCopyDefault(_ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainSetDefault(_ keychain: SecKeychain?) -> OSStatus
func SecKeychainCopySearchList(_ searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecKeychainSetSearchList(_ searchList: CFArray) -> OSStatus
enum SecPreferencesDomain : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case user
  case system
  case common
  case dynamic
}
func SecKeychainCopyDomainDefault(_ domain: SecPreferencesDomain, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainSetDomainDefault(_ domain: SecPreferencesDomain, _ keychain: SecKeychain?) -> OSStatus
func SecKeychainCopyDomainSearchList(_ domain: SecPreferencesDomain, _ searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecKeychainSetDomainSearchList(_ domain: SecPreferencesDomain, _ searchList: CFArray) -> OSStatus
func SecKeychainSetPreferenceDomain(_ domain: SecPreferencesDomain) -> OSStatus
func SecKeychainGetPreferenceDomain(_ domain: UnsafeMutablePointer<SecPreferencesDomain>) -> OSStatus
func SecKeychainGetStatus(_ keychain: SecKeychain?, _ keychainStatus: UnsafeMutablePointer<SecKeychainStatus>) -> OSStatus
func SecKeychainGetPath(_ keychain: SecKeychain?, _ ioPathLength: UnsafeMutablePointer<UInt32>, _ pathName: UnsafeMutablePointer<CChar>) -> OSStatus
func SecKeychainAttributeInfoForItemID(_ keychain: SecKeychain?, _ itemID: UInt32, _ info: UnsafeMutablePointer<UnsafeMutablePointer<SecKeychainAttributeInfo>?>) -> OSStatus
func SecKeychainFreeAttributeInfo(_ info: UnsafeMutablePointer<SecKeychainAttributeInfo>) -> OSStatus
typealias SecKeychainCallback = @convention(c) (SecKeychainEvent, UnsafeMutablePointer<SecKeychainCallbackInfo>, UnsafeMutableRawPointer?) -> OSStatus
func SecKeychainAddCallback(_ callbackFunction: SecKeychainCallback, _ eventMask: SecKeychainEventMask, _ userContext: UnsafeMutableRawPointer?) -> OSStatus
func SecKeychainRemoveCallback(_ callbackFunction: SecKeychainCallback) -> OSStatus
func SecKeychainAddInternetPassword(_ keychain: SecKeychain?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<CChar>?, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<CChar>?, _ accountNameLength: UInt32, _ accountName: UnsafePointer<CChar>?, _ pathLength: UInt32, _ path: UnsafePointer<CChar>?, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UInt32, _ passwordData: UnsafeRawPointer, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>?) -> OSStatus
func SecKeychainFindInternetPassword(_ keychainOrArray: CFTypeRef?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<CChar>?, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<CChar>?, _ accountNameLength: UInt32, _ accountName: UnsafePointer<CChar>?, _ pathLength: UInt32, _ path: UnsafePointer<CChar>?, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UnsafeMutablePointer<UInt32>?, _ passwordData: UnsafeMutablePointer<UnsafeMutableRawPointer?>?, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>?) -> OSStatus
func SecKeychainAddGenericPassword(_ keychain: SecKeychain?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<CChar>?, _ accountNameLength: UInt32, _ accountName: UnsafePointer<CChar>?, _ passwordLength: UInt32, _ passwordData: UnsafeRawPointer, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>?) -> OSStatus
func SecKeychainFindGenericPassword(_ keychainOrArray: CFTypeRef?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<CChar>?, _ accountNameLength: UInt32, _ accountName: UnsafePointer<CChar>?, _ passwordLength: UnsafeMutablePointer<UInt32>?, _ passwordData: UnsafeMutablePointer<UnsafeMutableRawPointer?>?, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>?) -> OSStatus
func SecKeychainSetUserInteractionAllowed(_ state: Bool) -> OSStatus
func SecKeychainGetUserInteractionAllowed(_ state: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.13)
func SecKeychainCopyAccess(_ keychain: SecKeychain?, _ access: UnsafeMutablePointer<SecAccess?>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.13)
func SecKeychainSetAccess(_ keychain: SecKeychain?, _ access: SecAccess) -> OSStatus
