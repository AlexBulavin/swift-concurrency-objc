
@available(macOS 10.15, *)
class MLUpdateContext : NSObject {
  var task: MLUpdateTask { get }
  var model: MLModel & MLWritable { get }
  var event: MLUpdateProgressEvent { get }
  var metrics: [MLMetricKey : Any] { get }
  var parameters: [MLParameterKey : Any] { get }
}
