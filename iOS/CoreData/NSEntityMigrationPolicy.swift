
@available(iOS 3.0, *)
let NSMigrationManagerKey: String
@available(iOS 3.0, *)
let NSMigrationSourceObjectKey: String
@available(iOS 3.0, *)
let NSMigrationDestinationObjectKey: String
@available(iOS 3.0, *)
let NSMigrationEntityMappingKey: String
@available(iOS 3.0, *)
let NSMigrationPropertyMappingKey: String
@available(iOS 3.0, *)
let NSMigrationEntityPolicyKey: String
@available(iOS 3.0, *)
class NSEntityMigrationPolicy : NSObject {
  func begin(_ mapping: NSEntityMapping, with manager: NSMigrationManager) throws
  func createDestinationInstances(forSource sInstance: NSManagedObject, in mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreation(forMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationships(forDestination dInstance: NSManagedObject, in mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreation(forMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidation(forMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func end(_ mapping: NSEntityMapping, manager: NSMigrationManager) throws
}
