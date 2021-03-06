
struct _cl_ndrange {
  var work_dim: Int
  var global_work_offset: (Int, Int, Int)
  var global_work_size: (Int, Int, Int)
  var local_work_size: (Int, Int, Int)
  init()
  init(work_dim: Int, global_work_offset: (Int, Int, Int), global_work_size: (Int, Int, Int), local_work_size: (Int, Int, Int))
}
typealias cl_ndrange = _cl_ndrange
typealias cl_image = cl_mem
typealias cl_timer = UInt64
typealias sampler_t = UInt
typealias cl_queue_flags = cl_bitfield
typealias cl_malloc_flags = cl_bitfield
typealias cl_image_type = cl_mem_object_type
var CL_IMAGE_2D: Int32 { get }
var CL_IMAGE_3D: Int32 { get }
var CL_DISPATCH_QUEUE_PRIORITY_DEFAULT: Int32 { get }
var CL_DISPATCH_QUEUE_PRIORITY_BACKGROUND: Int32 { get }
var CL_DISPATCH_QUEUE_PRIORITY_HIGH: Int32 { get }
var CL_DISPATCH_QUEUE_PRIORITY_LOW: Int32 { get }
var CL_DEVICE_TYPE_USE_ID: Int32 { get }
struct clk_sampler_type : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var __CLK_ADDRESS_BASE: clk_sampler_type { get }
var CLK_ADDRESS_NONE: clk_sampler_type { get }
var CLK_ADDRESS_CLAMP: clk_sampler_type { get }
var CLK_ADDRESS_CLAMP_TO_EDGE: clk_sampler_type { get }
var CLK_ADDRESS_REPEAT: clk_sampler_type { get }
var CLK_ADDRESS_MIRRORED_REPEAT: clk_sampler_type { get }
var __CLK_ADDRESS_MASK: clk_sampler_type { get }
var __CLK_ADDRESS_BITS: clk_sampler_type { get }
var __CLK_NORMALIZED_BASE: clk_sampler_type { get }
var CLK_NORMALIZED_COORDS_FALSE: clk_sampler_type { get }
var CLK_NORMALIZED_COORDS_TRUE: clk_sampler_type { get }
var __CLK_NORMALIZED_MASK: clk_sampler_type { get }
var __CLK_NORMALIZED_BITS: clk_sampler_type { get }
var __CLK_FILTER_BASE: clk_sampler_type { get }
var CLK_FILTER_NEAREST: clk_sampler_type { get }
var CLK_FILTER_LINEAR: clk_sampler_type { get }
var __CLK_FILTER_MASK: clk_sampler_type { get }
var __CLK_FILTER_BITS: clk_sampler_type { get }
@available(macOS 10.7, *)
func gcl_create_dispatch_queue(_ flags: cl_queue_flags, _ device_id: cl_device_id?) -> DispatchQueue?
@available(macOS 10.7, *)
func gcl_malloc(_ bytes: Int, _ host_ptr: UnsafeMutableRawPointer?, _ flags: cl_malloc_flags) -> UnsafeMutableRawPointer?
@available(macOS 10.7, *)
func gcl_free(_ ptr: UnsafeMutableRawPointer)
@available(macOS 10.7, *)
func gcl_create_image(_ image_format: UnsafePointer<cl_image_format>, _ image_width: Int, _ image_height: Int, _ image_depth: Int, _ io_surface: IOSurfaceRef?) -> cl_image?
@available(macOS 10.7, *)
func gcl_retain_image(_ image: cl_image)
@available(macOS 10.7, *)
func gcl_release_image(_ image: cl_image)
@available(macOS 10.7, *)
func gcl_get_supported_image_formats(_ device_id: cl_device_id, _ image_type: cl_image_type, _ num_entries: UInt32, _ image_formats: UnsafeMutablePointer<cl_image_format>, _ num_image_formats: UnsafeMutablePointer<UInt32>?)
@available(macOS 10.7, *)
func gcl_memcpy(_ dst: UnsafeMutableRawPointer, _ src: UnsafeRawPointer, _ size: Int)
@available(macOS 10.7, *)
func gcl_memcpy_rect(_ dst: UnsafeMutableRawPointer, _ src: UnsafeRawPointer, _ dst_origin: UnsafePointer<Int>!, _ src_origin: UnsafePointer<Int>!, _ region: UnsafePointer<Int>!, _ dst_row_pitch: Int, _ dst_slice_pitch: Int, _ src_row_pitch: Int, _ src_slice_pitch: Int)
@available(macOS 10.7, *)
func gcl_copy_image(_ dst_image: cl_image, _ src_image: cl_image, _ dst_origin: UnsafePointer<Int>!, _ src_origin: UnsafePointer<Int>!, _ region: UnsafePointer<Int>!)
@available(macOS 10.7, *)
func gcl_copy_ptr_to_image(_ dst_image: cl_mem, _ src_ptr: UnsafeMutableRawPointer, _ dst_origin: UnsafePointer<Int>!, _ region: UnsafePointer<Int>!)
@available(macOS 10.7, *)
func gcl_copy_image_to_ptr(_ dst_ptr: UnsafeMutableRawPointer, _ src_image: cl_image, _ src_origin: UnsafePointer<Int>!, _ region: UnsafePointer<Int>!)
@available(macOS 10.7, *)
func gcl_map_ptr(_ ptr: UnsafeMutableRawPointer, _ map_flags: cl_map_flags, _ cb: Int) -> UnsafeMutableRawPointer?
@available(macOS 10.7, *)
func gcl_map_image(_ image: cl_image, _ map_flags: cl_map_flags, _ origin: UnsafePointer<Int>!, _ region: UnsafePointer<Int>!) -> UnsafeMutableRawPointer?
@available(macOS 10.7, *)
func gcl_unmap(_: UnsafeMutableRawPointer)
@available(macOS 10.7, *)
func gcl_create_kernel_from_block(_ kernel_block_ptr: UnsafeMutableRawPointer) -> cl_kernel?
@available(macOS 10.7, *)
func gcl_get_kernel_block_workgroup_info(_ kernel_block_ptr: UnsafeMutableRawPointer, _ param_name: cl_kernel_work_group_info, _ param_value_size: Int, _ param_value: UnsafeMutableRawPointer, _ param_value_size_ret: UnsafeMutablePointer<Int>?)
@available(macOS 10.7, *)
func gcl_get_device_id_with_dispatch_queue(_ queue: DispatchQueue) -> cl_device_id?
@available(macOS 10.7, *)
func gcl_set_finalizer(_ object: UnsafeMutableRawPointer, _ cl_pfn_finalizer: @convention(c) (UnsafeMutableRawPointer, UnsafeMutableRawPointer?) -> Void, _ user_data: UnsafeMutableRawPointer?)
@available(macOS 10.7, *)
func gcl_start_timer() -> cl_timer
@available(macOS 10.7, *)
func gcl_stop_timer(_ t: cl_timer) -> Double
@available(macOS 10.7, *)
func gcl_create_buffer_from_ptr(_ ptr: UnsafeMutableRawPointer) -> cl_mem?
@available(macOS 10.7, *)
func gcl_gl_create_ptr_from_buffer(_ bufobj: GLuint) -> UnsafeMutableRawPointer?
@available(macOS 10.7, *)
func gcl_gl_create_image_from_texture(_ texture_target: GLenum, _ mip_level: GLint, _ texture: GLuint) -> cl_image?
@available(macOS 10.7, *)
func gcl_gl_create_image_from_renderbuffer(_ render_buffer: GLuint) -> cl_image?
@available(macOS 10.7, *)
func gcl_gl_set_sharegroup(_ share: UnsafeMutableRawPointer)
@available(macOS 10.7, *)
func gcl_get_context() -> cl_context?
