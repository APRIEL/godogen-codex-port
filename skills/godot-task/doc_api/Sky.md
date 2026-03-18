## Sky <- Resource

The Sky class uses a Material to render a 3D environment's background and the light it emits by updating the reflection/radiance cubemaps.

**Props:**
- process_mode: int (Sky.ProcessMode) = 0
- radiance_size: int (Sky.RadianceSize) = 3
- sky_material: Material

**Enums:**
**RadianceSize:** RADIANCE_SIZE_32=0, RADIANCE_SIZE_64=1, RADIANCE_SIZE_128=2, RADIANCE_SIZE_256=3, RADIANCE_SIZE_512=4, RADIANCE_SIZE_1024=5, RADIANCE_SIZE_2048=6, RADIANCE_SIZE_MAX=7
**ProcessMode:** PROCESS_MODE_AUTOMATIC=0, PROCESS_MODE_QUALITY=1, PROCESS_MODE_INCREMENTAL=2, PROCESS_MODE_REALTIME=3

