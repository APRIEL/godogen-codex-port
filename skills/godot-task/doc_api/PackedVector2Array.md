## PackedVector2Array

An array specifically designed to hold Vector2. Packs data tightly, so it saves memory for large array sizes. **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. PackedVector2Array versus `ArrayVector2`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as `Array.map`. Typed arrays are in turn faster to iterate on and modify than untyped arrays. **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use `duplicate`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again. **Note:** In a boolean context, a packed array will evaluate to `false` if it's empty. Otherwise, a packed array will always evaluate to `true`.

**Methods:**
- append(value: Vector2) -> bool
- append_array(array: PackedVector2Array)
- bsearch(value: Vector2, before: bool = true) -> int
- clear()
- count(value: Vector2) -> int
- duplicate() -> PackedVector2Array
- erase(value: Vector2) -> bool
- fill(value: Vector2)
- find(value: Vector2, from: int = 0) -> int
- get(index: int) -> Vector2
- has(value: Vector2) -> bool
- insert(at_index: int, value: Vector2) -> int
- is_empty() -> bool
- push_back(value: Vector2) -> bool
- remove_at(index: int)
- resize(new_size: int) -> int
- reverse()
- rfind(value: Vector2, from: int = -1) -> int
- set(index: int, value: Vector2)
- size() -> int
- slice(begin: int, end: int = 2147483647) -> PackedVector2Array
- sort()
- to_byte_array() -> PackedByteArray

