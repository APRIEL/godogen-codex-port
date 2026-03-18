## RenderingDevice <- Object

RenderingDevice is an abstraction for working with modern low-level graphics APIs such as Vulkan. Compared to RenderingServer (which works with Godot's own rendering subsystems), RenderingDevice is much lower-level and allows working more directly with the underlying graphics APIs. RenderingDevice is used in Godot to provide support for several modern low-level graphics APIs while reducing the amount of code duplication required. RenderingDevice can also be used in your own projects to perform things that are not exposed by RenderingServer or high-level nodes, such as using compute shaders. On startup, Godot creates a global RenderingDevice which can be retrieved using `RenderingServer.get_rendering_device`. This global RenderingDevice performs drawing to the screen. **Local RenderingDevices:** Using `RenderingServer.create_local_rendering_device`, you can create "secondary" rendering devices to perform drawing and GPU compute operations on separate threads. **Note:** RenderingDevice assumes intermediate knowledge of modern graphics APIs such as Vulkan, Direct3D 12, Metal or WebGPU. These graphics APIs are lower-level than OpenGL or Direct3D 11, requiring you to perform what was previously done by the graphics driver itself. If you have difficulty understanding the concepts used in this class, follow the or . It's recommended to have existing modern OpenGL or Direct3D 11 knowledge before attempting to learn a low-level graphics API. **Note:** RenderingDevice is not available when running in headless mode or when using the Compatibility rendering method.

**Methods:**
- acceleration_structure_build(acceleration_structure: RID) -> int
- barrier(from: int = 32767, to: int = 32767)
- blas_create(vertex_array: RID, index_array: RID, geometry_bits: int = 0, position_attribute_location: int = 0) -> RID
- buffer_clear(buffer: RID, offset: int, size_bytes: int) -> int
- buffer_copy(src_buffer: RID, dst_buffer: RID, src_offset: int, dst_offset: int, size: int) -> int
- buffer_get_data(buffer: RID, offset_bytes: int = 0, size_bytes: int = 0) -> PackedByteArray
- buffer_get_data_async(buffer: RID, callback: Callable, offset_bytes: int = 0, size_bytes: int = 0) -> int
- buffer_get_device_address(buffer: RID) -> int
- buffer_update(buffer: RID, offset: int, size_bytes: int, data: PackedByteArray) -> int
- capture_timestamp(name: String)
- compute_list_add_barrier(compute_list: int)
- compute_list_begin() -> int
- compute_list_bind_compute_pipeline(compute_list: int, compute_pipeline: RID)
- compute_list_bind_uniform_set(compute_list: int, uniform_set: RID, set_index: int)
- compute_list_dispatch(compute_list: int, x_groups: int, y_groups: int, z_groups: int)
- compute_list_dispatch_indirect(compute_list: int, buffer: RID, offset: int)
- compute_list_end()
- compute_list_set_push_constant(compute_list: int, buffer: PackedByteArray, size_bytes: int)
- compute_pipeline_create(shader: RID, specialization_constants: RDPipelineSpecializationConstant[] = []) -> RID
- compute_pipeline_is_valid(compute_pipeline: RID) -> bool
- create_local_device() -> RenderingDevice
- draw_command_begin_label(name: String, color: Color)
- draw_command_end_label()
- draw_command_insert_label(name: String, color: Color)
- draw_list_begin(framebuffer: RID, draw_flags: int = 0, clear_color_values: PackedColorArray = PackedColorArray(), clear_depth_value: float = 1.0, clear_stencil_value: int = 0, region: Rect2 = Rect2(0, 0, 0, 0), breadcrumb: int = 0) -> int
- draw_list_begin_for_screen(screen: int = 0, clear_color: Color = Color(0, 0, 0, 1)) -> int
- draw_list_begin_split(framebuffer: RID, splits: int, initial_color_action: int, final_color_action: int, initial_depth_action: int, final_depth_action: int, clear_color_values: PackedColorArray = PackedColorArray(), clear_depth: float = 1.0, clear_stencil: int = 0, region: Rect2 = Rect2(0, 0, 0, 0), storage_textures: RID[] = []) -> PackedInt64Array
- draw_list_bind_index_array(draw_list: int, index_array: RID)
- draw_list_bind_render_pipeline(draw_list: int, render_pipeline: RID)
- draw_list_bind_uniform_set(draw_list: int, uniform_set: RID, set_index: int)
- draw_list_bind_vertex_array(draw_list: int, vertex_array: RID)
- draw_list_bind_vertex_buffers_format(draw_list: int, vertex_format: int, vertex_count: int, vertex_buffers: RID[], offsets: PackedInt64Array = PackedInt64Array())
- draw_list_disable_scissor(draw_list: int)
- draw_list_draw(draw_list: int, use_indices: bool, instances: int, procedural_vertex_count: int = 0)
- draw_list_draw_indirect(draw_list: int, use_indices: bool, buffer: RID, offset: int = 0, draw_count: int = 1, stride: int = 0)
- draw_list_enable_scissor(draw_list: int, rect: Rect2 = Rect2(0, 0, 0, 0))
- draw_list_end()
- draw_list_set_blend_constants(draw_list: int, color: Color)
- draw_list_set_push_constant(draw_list: int, buffer: PackedByteArray, size_bytes: int)
- draw_list_switch_to_next_pass() -> int
- draw_list_switch_to_next_pass_split(splits: int) -> PackedInt64Array
- framebuffer_create(textures: RID[], validate_with_format: int = -1, view_count: int = 1) -> RID
- framebuffer_create_empty(size: Vector2i, samples: int = 0, validate_with_format: int = -1) -> RID
- framebuffer_create_multipass(textures: RID[], passes: RDFramebufferPass[], validate_with_format: int = -1, view_count: int = 1) -> RID
- framebuffer_format_create(attachments: RDAttachmentFormat[], view_count: int = 1) -> int
- framebuffer_format_create_empty(samples: int = 0) -> int
- framebuffer_format_create_multipass(attachments: RDAttachmentFormat[], passes: RDFramebufferPass[], view_count: int = 1) -> int
- framebuffer_format_get_texture_samples(format: int, render_pass: int = 0) -> int
- framebuffer_get_format(framebuffer: RID) -> int
- framebuffer_is_valid(framebuffer: RID) -> bool
- free_rid(rid: RID)
- full_barrier()
- get_captured_timestamp_cpu_time(index: int) -> int
- get_captured_timestamp_gpu_time(index: int) -> int
- get_captured_timestamp_name(index: int) -> String
- get_captured_timestamps_count() -> int
- get_captured_timestamps_frame() -> int
- get_device_allocation_count() -> int
- get_device_allocs_by_object_type(type: int) -> int
- get_device_memory_by_object_type(type: int) -> int
- get_device_name() -> String
- get_device_pipeline_cache_uuid() -> String
- get_device_total_memory() -> int
- get_device_vendor_name() -> String
- get_driver_allocation_count() -> int
- get_driver_allocs_by_object_type(type: int) -> int
- get_driver_and_device_memory_report() -> String
- get_driver_memory_by_object_type(type: int) -> int
- get_driver_resource(resource: int, rid: RID, index: int) -> int
- get_driver_total_memory() -> int
- get_frame_delay() -> int
- get_memory_usage(type: int) -> int
- get_perf_report() -> String
- get_tracked_object_name(type_index: int) -> String
- get_tracked_object_type_count() -> int
- has_feature(feature: int) -> bool
- index_array_create(index_buffer: RID, index_offset: int, index_count: int) -> RID
- index_buffer_create(size_indices: int, format: int, data: PackedByteArray = PackedByteArray(), use_restart_indices: bool = false, creation_bits: int = 0) -> RID
- limit_get(limit: int) -> int
- raytracing_list_begin() -> int
- raytracing_list_bind_raytracing_pipeline(raytracing_list: int, raytracing_pipeline: RID)
- raytracing_list_bind_uniform_set(raytracing_list: int, uniform_set: RID, set_index: int)
- raytracing_list_end()
- raytracing_list_set_push_constant(raytracing_list: int, buffer: PackedByteArray, size_bytes: int)
- raytracing_list_trace_rays(raytracing_list: int, width: int, height: int)
- raytracing_pipeline_create(shader: RID, specialization_constants: RDPipelineSpecializationConstant[] = []) -> RID
- raytracing_pipeline_is_valid(raytracing_pipeline: RID) -> bool
- render_pipeline_create(shader: RID, framebuffer_format: int, vertex_format: int, primitive: int, rasterization_state: RDPipelineRasterizationState, multisample_state: RDPipelineMultisampleState, stencil_state: RDPipelineDepthStencilState, color_blend_state: RDPipelineColorBlendState, dynamic_state_flags: int = 0, for_render_pass: int = 0, specialization_constants: RDPipelineSpecializationConstant[] = []) -> RID
- render_pipeline_is_valid(render_pipeline: RID) -> bool
- sampler_create(state: RDSamplerState) -> RID
- sampler_is_format_supported_for_filter(format: int, sampler_filter: int) -> bool
- screen_get_framebuffer_format(screen: int = 0) -> int
- screen_get_height(screen: int = 0) -> int
- screen_get_width(screen: int = 0) -> int
- set_resource_name(id: RID, name: String)
- shader_compile_binary_from_spirv(spirv_data: RDShaderSPIRV, name: String = "") -> PackedByteArray
- shader_compile_spirv_from_source(shader_source: RDShaderSource, allow_cache: bool = true) -> RDShaderSPIRV
- shader_create_from_bytecode(binary_data: PackedByteArray, placeholder_rid: RID = RID()) -> RID
- shader_create_from_spirv(spirv_data: RDShaderSPIRV, name: String = "") -> RID
- shader_create_placeholder() -> RID
- shader_get_vertex_input_attribute_mask(shader: RID) -> int
- storage_buffer_create(size_bytes: int, data: PackedByteArray = PackedByteArray(), usage: int = 0, creation_bits: int = 0) -> RID
- submit()
- sync()
- texture_buffer_create(size_bytes: int, format: int, data: PackedByteArray = PackedByteArray()) -> RID
- texture_clear(texture: RID, color: Color, base_mipmap: int, mipmap_count: int, base_layer: int, layer_count: int) -> int
- texture_copy(from_texture: RID, to_texture: RID, from_pos: Vector3, to_pos: Vector3, size: Vector3, src_mipmap: int, dst_mipmap: int, src_layer: int, dst_layer: int) -> int
- texture_create(format: RDTextureFormat, view: RDTextureView, data: PackedByteArray[] = []) -> RID
- texture_create_from_extension(type: int, format: int, samples: int, usage_flags: int, image: int, width: int, height: int, depth: int, layers: int, mipmaps: int = 1) -> RID
- texture_create_shared(view: RDTextureView, with_texture: RID) -> RID
- texture_create_shared_from_slice(view: RDTextureView, with_texture: RID, layer: int, mipmap: int, mipmaps: int = 1, slice_type: int = 0) -> RID
- texture_get_data(texture: RID, layer: int) -> PackedByteArray
- texture_get_data_async(texture: RID, layer: int, callback: Callable) -> int
- texture_get_format(texture: RID) -> RDTextureFormat
- texture_get_native_handle(texture: RID) -> int
- texture_is_discardable(texture: RID) -> bool
- texture_is_format_supported_for_usage(format: int, usage_flags: int) -> bool
- texture_is_shared(texture: RID) -> bool
- texture_is_valid(texture: RID) -> bool
- texture_resolve_multisample(from_texture: RID, to_texture: RID) -> int
- texture_set_discardable(texture: RID, discardable: bool)
- texture_update(texture: RID, layer: int, data: PackedByteArray) -> int
- tlas_create(instances_buffer: RID) -> RID
- tlas_instances_buffer_create(instance_count: int, creation_bits: int = 0) -> RID
- tlas_instances_buffer_fill(instances_buffer: RID, blases: RID[], transforms: Transform3D[])
- uniform_buffer_create(size_bytes: int, data: PackedByteArray = PackedByteArray(), creation_bits: int = 0) -> RID
- uniform_set_create(uniforms: RDUniform[], shader: RID, shader_set: int) -> RID
- uniform_set_is_valid(uniform_set: RID) -> bool
- vertex_array_create(vertex_count: int, vertex_format: int, src_buffers: RID[], offsets: PackedInt64Array = PackedInt64Array()) -> RID
- vertex_buffer_create(size_bytes: int, data: PackedByteArray = PackedByteArray(), creation_bits: int = 0) -> RID
- vertex_format_create(vertex_descriptions: RDVertexAttribute[]) -> int

**Enums:**
**DeviceType:** DEVICE_TYPE_OTHER=0, DEVICE_TYPE_INTEGRATED_GPU=1, DEVICE_TYPE_DISCRETE_GPU=2, DEVICE_TYPE_VIRTUAL_GPU=3, DEVICE_TYPE_CPU=4, DEVICE_TYPE_MAX=5
**DriverResource:** DRIVER_RESOURCE_LOGICAL_DEVICE=0, DRIVER_RESOURCE_PHYSICAL_DEVICE=1, DRIVER_RESOURCE_TOPMOST_OBJECT=2, DRIVER_RESOURCE_COMMAND_QUEUE=3, DRIVER_RESOURCE_QUEUE_FAMILY=4, DRIVER_RESOURCE_TEXTURE=5, DRIVER_RESOURCE_TEXTURE_VIEW=6, DRIVER_RESOURCE_TEXTURE_DATA_FORMAT=7, DRIVER_RESOURCE_SAMPLER=8, DRIVER_RESOURCE_UNIFORM_SET=9, ...
**DataFormat:** DATA_FORMAT_R4G4_UNORM_PACK8=0, DATA_FORMAT_R4G4B4A4_UNORM_PACK16=1, DATA_FORMAT_B4G4R4A4_UNORM_PACK16=2, DATA_FORMAT_R5G6B5_UNORM_PACK16=3, DATA_FORMAT_B5G6R5_UNORM_PACK16=4, DATA_FORMAT_R5G5B5A1_UNORM_PACK16=5, DATA_FORMAT_B5G5R5A1_UNORM_PACK16=6, DATA_FORMAT_A1R5G5B5_UNORM_PACK16=7, DATA_FORMAT_R8_UNORM=8, DATA_FORMAT_R8_SNORM=9, ...
**BarrierMask:** BARRIER_MASK_VERTEX=1, BARRIER_MASK_FRAGMENT=8, BARRIER_MASK_COMPUTE=2, BARRIER_MASK_TRANSFER=4, BARRIER_MASK_RASTER=9, BARRIER_MASK_ALL_BARRIERS=32767, BARRIER_MASK_NO_BARRIER=32768
**TextureType:** TEXTURE_TYPE_1D=0, TEXTURE_TYPE_2D=1, TEXTURE_TYPE_3D=2, TEXTURE_TYPE_CUBE=3, TEXTURE_TYPE_1D_ARRAY=4, TEXTURE_TYPE_2D_ARRAY=5, TEXTURE_TYPE_CUBE_ARRAY=6, TEXTURE_TYPE_MAX=7
**TextureSamples:** TEXTURE_SAMPLES_1=0, TEXTURE_SAMPLES_2=1, TEXTURE_SAMPLES_4=2, TEXTURE_SAMPLES_8=3, TEXTURE_SAMPLES_16=4, TEXTURE_SAMPLES_32=5, TEXTURE_SAMPLES_64=6, TEXTURE_SAMPLES_MAX=7
**TextureUsageBits:** TEXTURE_USAGE_SAMPLING_BIT=1, TEXTURE_USAGE_COLOR_ATTACHMENT_BIT=2, TEXTURE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT=4, TEXTURE_USAGE_DEPTH_RESOLVE_ATTACHMENT_BIT=4096, TEXTURE_USAGE_STORAGE_BIT=8, TEXTURE_USAGE_STORAGE_ATOMIC_BIT=16, TEXTURE_USAGE_CPU_READ_BIT=32, TEXTURE_USAGE_CAN_UPDATE_BIT=64, TEXTURE_USAGE_CAN_COPY_FROM_BIT=128, TEXTURE_USAGE_CAN_COPY_TO_BIT=256, ...
**TextureSwizzle:** TEXTURE_SWIZZLE_IDENTITY=0, TEXTURE_SWIZZLE_ZERO=1, TEXTURE_SWIZZLE_ONE=2, TEXTURE_SWIZZLE_R=3, TEXTURE_SWIZZLE_G=4, TEXTURE_SWIZZLE_B=5, TEXTURE_SWIZZLE_A=6, TEXTURE_SWIZZLE_MAX=7
**TextureSliceType:** TEXTURE_SLICE_2D=0, TEXTURE_SLICE_CUBEMAP=1, TEXTURE_SLICE_3D=2
**SamplerFilter:** SAMPLER_FILTER_NEAREST=0, SAMPLER_FILTER_LINEAR=1
**SamplerRepeatMode:** SAMPLER_REPEAT_MODE_REPEAT=0, SAMPLER_REPEAT_MODE_MIRRORED_REPEAT=1, SAMPLER_REPEAT_MODE_CLAMP_TO_EDGE=2, SAMPLER_REPEAT_MODE_CLAMP_TO_BORDER=3, SAMPLER_REPEAT_MODE_MIRROR_CLAMP_TO_EDGE=4, SAMPLER_REPEAT_MODE_MAX=5
**SamplerBorderColor:** SAMPLER_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK=0, SAMPLER_BORDER_COLOR_INT_TRANSPARENT_BLACK=1, SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_BLACK=2, SAMPLER_BORDER_COLOR_INT_OPAQUE_BLACK=3, SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_WHITE=4, SAMPLER_BORDER_COLOR_INT_OPAQUE_WHITE=5, SAMPLER_BORDER_COLOR_MAX=6
**VertexFrequency:** VERTEX_FREQUENCY_VERTEX=0, VERTEX_FREQUENCY_INSTANCE=1
**IndexBufferFormat:** INDEX_BUFFER_FORMAT_UINT16=0, INDEX_BUFFER_FORMAT_UINT32=1
**StorageBufferUsage:** STORAGE_BUFFER_USAGE_DISPATCH_INDIRECT=1
**BufferCreationBits:** BUFFER_CREATION_DEVICE_ADDRESS_BIT=1, BUFFER_CREATION_AS_STORAGE_BIT=2, BUFFER_CREATION_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT=8
**AccelerationStructureGeometryBits:** ACCELERATION_STRUCTURE_GEOMETRY_OPAQUE=1, ACCELERATION_STRUCTURE_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION=2
**UniformType:** UNIFORM_TYPE_SAMPLER=0, UNIFORM_TYPE_SAMPLER_WITH_TEXTURE=1, UNIFORM_TYPE_TEXTURE=2, UNIFORM_TYPE_IMAGE=3, UNIFORM_TYPE_TEXTURE_BUFFER=4, UNIFORM_TYPE_SAMPLER_WITH_TEXTURE_BUFFER=5, UNIFORM_TYPE_IMAGE_BUFFER=6, UNIFORM_TYPE_UNIFORM_BUFFER=7, UNIFORM_TYPE_STORAGE_BUFFER=8, UNIFORM_TYPE_INPUT_ATTACHMENT=9, ...
**RenderPrimitive:** RENDER_PRIMITIVE_POINTS=0, RENDER_PRIMITIVE_LINES=1, RENDER_PRIMITIVE_LINES_WITH_ADJACENCY=2, RENDER_PRIMITIVE_LINESTRIPS=3, RENDER_PRIMITIVE_LINESTRIPS_WITH_ADJACENCY=4, RENDER_PRIMITIVE_TRIANGLES=5, RENDER_PRIMITIVE_TRIANGLES_WITH_ADJACENCY=6, RENDER_PRIMITIVE_TRIANGLE_STRIPS=7, RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_AJACENCY=8, RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_RESTART_INDEX=9, ...
**PolygonCullMode:** POLYGON_CULL_DISABLED=0, POLYGON_CULL_FRONT=1, POLYGON_CULL_BACK=2
**PolygonFrontFace:** POLYGON_FRONT_FACE_CLOCKWISE=0, POLYGON_FRONT_FACE_COUNTER_CLOCKWISE=1
**StencilOperation:** STENCIL_OP_KEEP=0, STENCIL_OP_ZERO=1, STENCIL_OP_REPLACE=2, STENCIL_OP_INCREMENT_AND_CLAMP=3, STENCIL_OP_DECREMENT_AND_CLAMP=4, STENCIL_OP_INVERT=5, STENCIL_OP_INCREMENT_AND_WRAP=6, STENCIL_OP_DECREMENT_AND_WRAP=7, STENCIL_OP_MAX=8
**CompareOperator:** COMPARE_OP_NEVER=0, COMPARE_OP_LESS=1, COMPARE_OP_EQUAL=2, COMPARE_OP_LESS_OR_EQUAL=3, COMPARE_OP_GREATER=4, COMPARE_OP_NOT_EQUAL=5, COMPARE_OP_GREATER_OR_EQUAL=6, COMPARE_OP_ALWAYS=7, COMPARE_OP_MAX=8
**LogicOperation:** LOGIC_OP_CLEAR=0, LOGIC_OP_AND=1, LOGIC_OP_AND_REVERSE=2, LOGIC_OP_COPY=3, LOGIC_OP_AND_INVERTED=4, LOGIC_OP_NO_OP=5, LOGIC_OP_XOR=6, LOGIC_OP_OR=7, LOGIC_OP_NOR=8, LOGIC_OP_EQUIVALENT=9, ...
**BlendFactor:** BLEND_FACTOR_ZERO=0, BLEND_FACTOR_ONE=1, BLEND_FACTOR_SRC_COLOR=2, BLEND_FACTOR_ONE_MINUS_SRC_COLOR=3, BLEND_FACTOR_DST_COLOR=4, BLEND_FACTOR_ONE_MINUS_DST_COLOR=5, BLEND_FACTOR_SRC_ALPHA=6, BLEND_FACTOR_ONE_MINUS_SRC_ALPHA=7, BLEND_FACTOR_DST_ALPHA=8, BLEND_FACTOR_ONE_MINUS_DST_ALPHA=9, ...
**BlendOperation:** BLEND_OP_ADD=0, BLEND_OP_SUBTRACT=1, BLEND_OP_REVERSE_SUBTRACT=2, BLEND_OP_MINIMUM=3, BLEND_OP_MAXIMUM=4, BLEND_OP_MAX=5
**PipelineDynamicStateFlags:** DYNAMIC_STATE_LINE_WIDTH=1, DYNAMIC_STATE_DEPTH_BIAS=2, DYNAMIC_STATE_BLEND_CONSTANTS=4, DYNAMIC_STATE_DEPTH_BOUNDS=8, DYNAMIC_STATE_STENCIL_COMPARE_MASK=16, DYNAMIC_STATE_STENCIL_WRITE_MASK=32, DYNAMIC_STATE_STENCIL_REFERENCE=64
**InitialAction:** INITIAL_ACTION_LOAD=0, INITIAL_ACTION_CLEAR=1, INITIAL_ACTION_DISCARD=2, INITIAL_ACTION_MAX=3, INITIAL_ACTION_CLEAR_REGION=1, INITIAL_ACTION_CLEAR_REGION_CONTINUE=1, INITIAL_ACTION_KEEP=0, INITIAL_ACTION_DROP=2, INITIAL_ACTION_CONTINUE=0
**FinalAction:** FINAL_ACTION_STORE=0, FINAL_ACTION_DISCARD=1, FINAL_ACTION_MAX=2, FINAL_ACTION_READ=0, FINAL_ACTION_CONTINUE=0
**ShaderStage:** SHADER_STAGE_VERTEX=0, SHADER_STAGE_FRAGMENT=1, SHADER_STAGE_TESSELATION_CONTROL=2, SHADER_STAGE_TESSELATION_EVALUATION=3, SHADER_STAGE_COMPUTE=4, SHADER_STAGE_RAYGEN=5, SHADER_STAGE_ANY_HIT=6, SHADER_STAGE_CLOSEST_HIT=7, SHADER_STAGE_MISS=8, SHADER_STAGE_INTERSECTION=9, ...
**ShaderLanguage:** SHADER_LANGUAGE_GLSL=0, SHADER_LANGUAGE_HLSL=1
**PipelineSpecializationConstantType:** PIPELINE_SPECIALIZATION_CONSTANT_TYPE_BOOL=0, PIPELINE_SPECIALIZATION_CONSTANT_TYPE_INT=1, PIPELINE_SPECIALIZATION_CONSTANT_TYPE_FLOAT=2
**Features:** SUPPORTS_METALFX_SPATIAL=3, SUPPORTS_METALFX_TEMPORAL=4, SUPPORTS_BUFFER_DEVICE_ADDRESS=6, SUPPORTS_IMAGE_ATOMIC_32_BIT=7, SUPPORTS_RAY_QUERY=11, SUPPORTS_RAYTRACING_PIPELINE=12, SUPPORTS_HDR_OUTPUT=13
**Limit:** LIMIT_MAX_BOUND_UNIFORM_SETS=0, LIMIT_MAX_FRAMEBUFFER_COLOR_ATTACHMENTS=1, LIMIT_MAX_TEXTURES_PER_UNIFORM_SET=2, LIMIT_MAX_SAMPLERS_PER_UNIFORM_SET=3, LIMIT_MAX_STORAGE_BUFFERS_PER_UNIFORM_SET=4, LIMIT_MAX_STORAGE_IMAGES_PER_UNIFORM_SET=5, LIMIT_MAX_UNIFORM_BUFFERS_PER_UNIFORM_SET=6, LIMIT_MAX_DRAW_INDEXED_INDEX=7, LIMIT_MAX_FRAMEBUFFER_HEIGHT=8, LIMIT_MAX_FRAMEBUFFER_WIDTH=9, ...
**MemoryType:** MEMORY_TEXTURES=0, MEMORY_BUFFERS=1, MEMORY_TOTAL=2
**Constants:** INVALID_ID=-1, INVALID_FORMAT_ID=-1
**BreadcrumbMarker:** NONE=0, REFLECTION_PROBES=65536, SKY_PASS=131072, LIGHTMAPPER_PASS=196608, SHADOW_PASS_DIRECTIONAL=262144, SHADOW_PASS_CUBE=327680, OPAQUE_PASS=393216, ALPHA_PASS=458752, TRANSPARENT_PASS=524288, POST_PROCESSING_PASS=589824, ...
**DrawFlags:** DRAW_DEFAULT_ALL=0, DRAW_CLEAR_COLOR_0=1, DRAW_CLEAR_COLOR_1=2, DRAW_CLEAR_COLOR_2=4, DRAW_CLEAR_COLOR_3=8, DRAW_CLEAR_COLOR_4=16, DRAW_CLEAR_COLOR_5=32, DRAW_CLEAR_COLOR_6=64, DRAW_CLEAR_COLOR_7=128, DRAW_CLEAR_COLOR_MASK=255, ...

