
@available(iOS 7.0, *)
class JSManagedValue : NSObject {
  @available(iOS 8.0, *)
  /*not inherited*/ init!(value: JSValue!, andOwner owner: Any!)
  init!(value: JSValue!)
  var value: JSValue! { get }
}
