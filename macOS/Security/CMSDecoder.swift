
class CMSDecoder : _CFObject {
}
func CMSDecoderGetTypeID() -> CFTypeID
enum CMSSignerStatus : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case unsigned
  case valid
  case needsDetachedContent
  case invalidSignature
  case invalidCert
  case invalidIndex
}
@available(macOS 10.5, *)
func CMSDecoderCreate(_ cmsDecoderOut: UnsafeMutablePointer<CMSDecoder?>) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderUpdateMessage(_ cmsDecoder: CMSDecoder, _ msgBytes: UnsafeRawPointer, _ msgBytesLen: Int) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderFinalizeMessage(_ cmsDecoder: CMSDecoder) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderSetDetachedContent(_ cmsDecoder: CMSDecoder, _ detachedContent: CFData) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderCopyDetachedContent(_ cmsDecoder: CMSDecoder, _ detachedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.13, renamed: "SecKeychainSetSearchList(_:)")
func CMSDecoderSetSearchKeychain(_ cmsDecoder: CMSDecoder, _ keychainOrArray: CFTypeRef) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderGetNumSigners(_ cmsDecoder: CMSDecoder, _ numSignersOut: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderCopySignerStatus(_ cmsDecoder: CMSDecoder, _ signerIndex: Int, _ policyOrArray: CFTypeRef, _ evaluateSecTrust: Bool, _ signerStatusOut: UnsafeMutablePointer<CMSSignerStatus>?, _ secTrustOut: UnsafeMutablePointer<SecTrust?>?, _ certVerifyResultCodeOut: UnsafeMutablePointer<OSStatus>?) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderCopySignerEmailAddress(_ cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerEmailAddressOut: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderCopySignerCert(_ cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerCertOut: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderIsContentEncrypted(_ cmsDecoder: CMSDecoder, _ isEncryptedOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderCopyEncapsulatedContentType(_ cmsDecoder: CMSDecoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderCopyAllCerts(_ cmsDecoder: CMSDecoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.5, *)
func CMSDecoderCopyContent(_ cmsDecoder: CMSDecoder, _ contentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(macOS 10.8, *)
func CMSDecoderCopySignerSigningTime(_ cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signingTime: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(macOS 10.8, *)
func CMSDecoderCopySignerTimestamp(_ cmsDecoder: CMSDecoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(macOS 10.10, *)
func CMSDecoderCopySignerTimestampWithPolicy(_ cmsDecoder: CMSDecoder, _ timeStampPolicy: CFTypeRef?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(macOS 10.8, *)
func CMSDecoderCopySignerTimestampCertificates(_ cmsDecoder: CMSDecoder, _ signerIndex: Int, _ certificateRefs: UnsafeMutablePointer<CFArray?>) -> OSStatus
