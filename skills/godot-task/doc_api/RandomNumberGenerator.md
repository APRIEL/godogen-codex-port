## RandomNumberGenerator <- RefCounted

RandomNumberGenerator is a class for generating pseudo-random numbers. It currently uses . **Note:** The underlying algorithm is an implementation detail and should not be depended upon. To generate a random float number (within a given range) based on a time-dependent seed:

**Props:**
- seed: int = 0
- state: int = 0

**Methods:**
- rand_weighted(weights: PackedFloat32Array) -> int
- randf() -> float
- randf_range(from: float, to: float) -> float
- randfn(mean: float = 0.0, deviation: float = 1.0) -> float
- randi() -> int
- randi_range(from: int, to: int) -> int
- randomize()

