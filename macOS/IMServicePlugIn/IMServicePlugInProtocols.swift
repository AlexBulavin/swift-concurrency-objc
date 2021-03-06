
protocol IMServicePlugIn : NSObjectProtocol {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  init!(serviceApplication: IMServiceApplication!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func updateAccountSettings(_ accountSettings: [AnyHashable : Any]!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func login()
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func logout()
}
protocol IMServiceApplication : NSObjectProtocol {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidLogIn()
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidLogOutWithError(_ error: Error!, reconnect: Bool)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidFailToAuthenticate()
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidUpdateProperties(_ changes: [AnyHashable : Any]!, ofHandle handle: String!)
}
