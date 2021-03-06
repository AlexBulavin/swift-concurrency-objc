
@available(macOS 10.8, *)
class EKRecurrenceRule : EKObject, NSCopying {
  init(recurrenceWith type: EKRecurrenceFrequency, interval: Int, end: EKRecurrenceEnd?)
  init(recurrenceWith type: EKRecurrenceFrequency, interval: Int, daysOfTheWeek days: [EKRecurrenceDayOfWeek]?, daysOfTheMonth monthDays: [NSNumber]?, monthsOfTheYear months: [NSNumber]?, weeksOfTheYear: [NSNumber]?, daysOfTheYear: [NSNumber]?, setPositions: [NSNumber]?, end: EKRecurrenceEnd?)
  var calendarIdentifier: String { get }
  @NSCopying var recurrenceEnd: EKRecurrenceEnd?
  var frequency: EKRecurrenceFrequency { get }
  var interval: Int { get }
  var firstDayOfTheWeek: Int { get }
  var daysOfTheWeek: [EKRecurrenceDayOfWeek]? { get }
  var daysOfTheMonth: [NSNumber]? { get }
  var daysOfTheYear: [NSNumber]? { get }
  var weeksOfTheYear: [NSNumber]? { get }
  var monthsOfTheYear: [NSNumber]? { get }
  var setPositions: [NSNumber]? { get }
}
