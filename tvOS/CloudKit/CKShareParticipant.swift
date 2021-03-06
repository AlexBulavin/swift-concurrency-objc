
@available(tvOS 10.0, *)
enum CKShare_Participant_AcceptanceStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case pending
  case accepted
  case removed
}
@available(tvOS 10.0, *)
enum CKShare_Participant_Permission : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case none
  case readOnly
  case readWrite
}
@available(tvOS 12.0, *)
enum CKShare_Participant_Role : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case owner
  case privateUser
  case publicUser
}
@available(tvOS, introduced: 10.0, deprecated: 12.0, renamed: "CKShareParticipantRole")
enum CKShare_Participant_ParticipantType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case owner
  case privateUser
  case publicUser
}
extension CKShare {
  @available(tvOS 10.0, *)
  class Participant : NSObject, NSSecureCoding, NSCopying {
    @NSCopying var userIdentity: CKUserIdentity { get }
    @available(tvOS 12.0, *)
    var role: CKShare_Participant_Role
    @available(tvOS, introduced: 10.0, deprecated: 12.0)
    var type: CKShare_Participant_ParticipantType
    var acceptanceStatus: CKShare_Participant_AcceptanceStatus { get }
    var permission: CKShare_Participant_Permission
  }
}
