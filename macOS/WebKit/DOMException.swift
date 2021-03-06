
@available(macOS, introduced: 10.4, deprecated: 10.14)
let DOMException: String
@available(macOS, introduced: 10.4, deprecated: 10.14)
struct DOMExceptionCode : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_INDEX_SIZE_ERR: DOMExceptionCode { get }
var DOM_DOMSTRING_SIZE_ERR: DOMExceptionCode { get }
var DOM_HIERARCHY_REQUEST_ERR: DOMExceptionCode { get }
var DOM_WRONG_DOCUMENT_ERR: DOMExceptionCode { get }
var DOM_INVALID_CHARACTER_ERR: DOMExceptionCode { get }
var DOM_NO_DATA_ALLOWED_ERR: DOMExceptionCode { get }
var DOM_NO_MODIFICATION_ALLOWED_ERR: DOMExceptionCode { get }
var DOM_NOT_FOUND_ERR: DOMExceptionCode { get }
var DOM_NOT_SUPPORTED_ERR: DOMExceptionCode { get }
var DOM_INUSE_ATTRIBUTE_ERR: DOMExceptionCode { get }
var DOM_INVALID_STATE_ERR: DOMExceptionCode { get }
var DOM_SYNTAX_ERR: DOMExceptionCode { get }
var DOM_INVALID_MODIFICATION_ERR: DOMExceptionCode { get }
var DOM_NAMESPACE_ERR: DOMExceptionCode { get }
var DOM_INVALID_ACCESS_ERR: DOMExceptionCode { get }
