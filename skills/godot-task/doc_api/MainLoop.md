## MainLoop <- Object

MainLoop is the abstract base class for a Godot project's game loop. It is inherited by SceneTree, which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own MainLoop subclass instead of the scene tree. Upon the application start, a MainLoop implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a SceneTree is created) unless a MainLoop Script is provided from the command line (with e.g. `godot -s my_loop.gd`) or the `ProjectSettings.application/run/main_loop_type` project setting is overwritten. Here is an example script implementing a simple MainLoop:

**Signals:**
- on_request_permissions_result(permission: String, granted: bool)

**Enums:**
**Constants:** NOTIFICATION_OS_MEMORY_WARNING=2009, NOTIFICATION_TRANSLATION_CHANGED=2010, NOTIFICATION_WM_ABOUT=2011, NOTIFICATION_CRASH=2012, NOTIFICATION_OS_IME_UPDATE=2013, NOTIFICATION_APPLICATION_RESUMED=2014, NOTIFICATION_APPLICATION_PAUSED=2015, NOTIFICATION_APPLICATION_FOCUS_IN=2016, NOTIFICATION_APPLICATION_FOCUS_OUT=2017, NOTIFICATION_TEXT_SERVER_CHANGED=2018

