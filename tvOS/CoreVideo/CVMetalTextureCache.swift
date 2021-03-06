
@available(tvOS 9.0, *)
let kCVMetalTextureCacheMaximumTextureAgeKey: CFString
class CVMetalTextureCache : _CFObject {
}
@available(tvOS 9.0, *)
func CVMetalTextureCacheGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
func CVMetalTextureCacheCreate(_ allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ metalDevice: MTLDevice, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<CVMetalTextureCache?>) -> CVReturn
@available(tvOS 9.0, *)
func CVMetalTextureCacheCreateTextureFromImage(_ allocator: CFAllocator?, _ textureCache: CVMetalTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ pixelFormat: MTLPixelFormat, _ width: Int, _ height: Int, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<CVMetalTexture?>) -> CVReturn
@available(tvOS 9.0, *)
func CVMetalTextureCacheFlush(_ textureCache: CVMetalTextureCache, _ options: CVOptionFlags)
