
extension CNContact {
  class func predicateForContacts(matchingName name: String) -> NSPredicate
  @available(macOS 10.13, *)
  class func predicateForContacts(matchingEmailAddress emailAddress: String) -> NSPredicate
  @available(macOS 10.13, *)
  class func predicateForContacts(matching phoneNumber: CNPhoneNumber) -> NSPredicate
  class func predicateForContacts(withIdentifiers identifiers: [String]) -> NSPredicate
  class func predicateForContactsInGroup(withIdentifier groupIdentifier: String) -> NSPredicate
  class func predicateForContactsInContainer(withIdentifier containerIdentifier: String) -> NSPredicate
}
