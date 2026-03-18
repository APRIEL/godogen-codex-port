## PhysicsServer2DManager <- Object

PhysicsServer2DManager is the API for registering PhysicsServer2D implementations and for setting the default implementation. **Note:** It is not possible to switch physics servers at runtime. This class is only used on startup at the server initialization level, by Godot itself and possibly by GDExtensions.

**Methods:**
- register_server(name: String, create_callback: Callable)
- set_default_server(name: String, priority: int)

