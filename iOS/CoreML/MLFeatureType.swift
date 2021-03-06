
@available(iOS 11.0, *)
enum MLFeatureType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case int64
  case double
  case string
  case image
  case multiArray
  case dictionary
  @available(iOS 12.0, *)
  case sequence
}
