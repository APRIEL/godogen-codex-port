## XRController3D <- XRNode3D

This is a helper 3D node that is linked to the tracking of controllers. It also offers several handy passthroughs to the state of buttons and such on the controllers. Controllers are linked by their ID. You can create controller nodes before the controllers are available. If your game always uses two controllers (one for each hand), you can predefine the controllers with ID 1 and 2; they will become active as soon as the controllers are identified. If you expect additional controllers to be used, you should react to the signals and add XRController3D nodes to your scene. The position of the controller node is automatically updated by the XRServer. This makes this node ideal to add child nodes to visualize the controller. The current XRInterface defines the names of inputs. In the case of OpenXR, these are the names of actions in the current action set from the OpenXR action map.

**Methods:**
- get_float(name: StringName) -> float
- get_input(name: StringName) -> Variant
- get_tracker_hand() -> int
- get_vector2(name: StringName) -> Vector2
- is_button_pressed(name: StringName) -> bool

**Signals:**
- button_pressed(name: String)
- button_released(name: String)
- input_float_changed(name: String, value: float)
- input_vector2_changed(name: String, value: Vector2)
- profile_changed(role: String)

