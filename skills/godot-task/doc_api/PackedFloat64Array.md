## PackedFloat64Array

An array specifically designed to hold 64-bit floating-point values (double). Packs data tightly, so it saves memory for large array sizes. If you only need to pack 32-bit floats tightly, see PackedFloat32Array for a more memory-friendly alternative. **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. PackedFloat64Array versus `Array[float]`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as `Array.map`. Typed arrays are in turn faster to iterate on and modify than untyped arrays. **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use `duplicate`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again. **Note:** In a boolean context, a packed array will evaluate to `false` if it's empty. Otherwise, a packed array will always evaluate to `true`.

**Methods:**
- append(value: float) -> bool
- append_array(array: PackedFloat64Array)
- bsearch(value: float, before: bool = true) -> int
- clear()
- count(value: float) -> int
- duplicate() -> PackedFloat64Array
- erase(value: float) -> bool
- fill(value: float)
- find(value: float, from: int = 0) -> int
- get(index: int) -> float
- has(value: float) -> bool
- insert(at_index: int, value: float) -> int
- is_empty() -> bool
- push_back(value: float) -> bool
- remove_at(index: int)
- resize(new_size: int) -> int
- reverse()
- rfind(value: float, from: int = -1) -> int
- set(index: int, value: float)
- size() -> int
- slice(begin: int, end: int = 2147483647) -> PackedFloat64Array
- sort()
- to_byte_array() -> PackedByteArray

