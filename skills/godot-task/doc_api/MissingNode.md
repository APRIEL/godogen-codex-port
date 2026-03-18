## MissingNode <- Node

This is an internal editor class intended for keeping data of nodes of unknown type (most likely this type was supplied by an extension that is no longer loaded). It can't be manually instantiated or placed in a scene. **Warning:** Ignore missing nodes unless you know what you are doing. Existing properties on a missing node can be freely modified in code, regardless of the type they are intended to be.

**Props:**
- original_class: String
- original_scene: String
- recording_properties: bool
- recording_signals: bool

