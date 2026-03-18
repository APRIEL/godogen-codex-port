## AudioEffectInstance <- RefCounted

An audio effect instance manipulates the audio it receives for a given effect. This instance is automatically created by an AudioEffect when it is added to a bus, and should usually not be created directly. If necessary, it can be fetched at run-time with `AudioServer.get_bus_effect_instance`.

