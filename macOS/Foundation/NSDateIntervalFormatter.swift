
extension DateIntervalFormatter {
  @available(macOS 10.10, *)
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case short
    case medium
    case long
    case full
  }
}
@available(macOS 10.10, *)
class DateIntervalFormatter : Formatter {
  var locale: Locale!
  var calendar: Calendar!
  var timeZone: TimeZone!
  var dateTemplate: String!
  var dateStyle: DateIntervalFormatter.Style
  var timeStyle: DateIntervalFormatter.Style
  func string(from fromDate: Date, to toDate: Date) -> String
  @available(macOS 10.12, *)
  func string(from dateInterval: DateInterval) -> String?
}
