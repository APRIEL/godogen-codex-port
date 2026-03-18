## VisualShaderNodeParticleEmit <- VisualShaderNode

This node internally calls `emit_subparticle` shader method. It will emit a particle from the configured sub-emitter and also allows to customize how its emitted. Requires a sub-emitter assigned to the particles node with this shader.

**Props:**
- flags: int (VisualShaderNodeParticleEmit.EmitFlags) = 31

**Enums:**
**EmitFlags:** EMIT_FLAG_POSITION=1, EMIT_FLAG_ROT_SCALE=2, EMIT_FLAG_VELOCITY=4, EMIT_FLAG_COLOR=8, EMIT_FLAG_CUSTOM=16

