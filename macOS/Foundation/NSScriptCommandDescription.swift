
class NSScriptCommandDescription : NSObject, NSCoding {
  init?(suiteName: String, commandName: String, dictionary commandDeclaration: [AnyHashable : Any]?)
  var suiteName: String { get }
  var commandName: String { get }
  var appleEventClassCode: FourCharCode { get }
  var appleEventCode: FourCharCode { get }
  var commandClassName: String { get }
  var returnType: String? { get }
  var appleEventCodeForReturnType: FourCharCode { get }
  var argumentNames: [String] { get }
  func typeForArgument(withName argumentName: String) -> String?
  func appleEventCodeForArgument(withName argumentName: String) -> FourCharCode
  func isOptionalArgument(withName argumentName: String) -> Bool
  func createCommandInstance() -> NSScriptCommand
  func createCommandInstance(with zone: NSZone? = nil) -> NSScriptCommand
}
