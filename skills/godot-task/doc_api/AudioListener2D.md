## AudioListener2D <- Node2D

Once added to the scene tree and enabled using `make_current`, this node will override the location sounds are heard from. Only one AudioListener2D can be current. Using `make_current` will disable the previous AudioListener2D. If there is no active AudioListener2D in the current Viewport, center of the screen will be used as a hearing point for the audio. AudioListener2D needs to be inside SceneTree to function.

**Methods:**
- clear_current()
- is_current() -> bool
- make_current()

