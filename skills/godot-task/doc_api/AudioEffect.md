## AudioEffect <- Resource

The base Resource for every audio effect. In the editor, an audio effect can be added to the current bus layout through the Audio panel. At run-time, it is also possible to manipulate audio effects through `AudioServer.add_bus_effect`, `AudioServer.remove_bus_effect`, and `AudioServer.get_bus_effect`. When applied on a bus, an audio effect creates a corresponding AudioEffectInstance. The instance is directly responsible for manipulating the sound, based on the original audio effect's properties.

