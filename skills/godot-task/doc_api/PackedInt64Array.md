## PackedInt64Array

An array specifically designed to hold 64-bit integer values. Packs data tightly, so it saves memory for large array sizes. **Note:** This type stores signed 64-bit integers, which means it can take values in the interval `[-2^63, 2^63 - 1]`, i.e. `[-9223372036854775808, 9223372036854775807]`. Exceeding those bounds will wrap around. If you only need to pack 32-bit integers tightly, see PackedInt32Array for a more memory-friendly alternative. **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. PackedInt64Array versus `Array[int]`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as `Array.map`. Typed arrays are in turn faster to iterate on and modify than untyped arrays. **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use `duplicate`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again. **Note:** In a boolean context, a packed array will evaluate to `false` if it's empty. Otherwise, a packed array will always evaluate to `true`.

**Methods:**
- append(value: int) -> bool
- append_array(array: PackedInt64Array)
- bsearch(value: int, before: bool = true) -> int
- clear()
- count(value: int) -> int
- duplicate() -> PackedInt64Array
- erase(value: int) -> bool
- fill(value: int)
- find(value: int, from: int = 0) -> int
- get(index: int) -> int
- has(value: int) -> bool
- insert(at_index: int, value: int) -> int
- is_empty() -> bool
- push_back(value: int) -> bool
- remove_at(index: int)
- resize(new_size: int) -> int
- reverse()
- rfind(value: int, from: int = -1) -> int
- set(index: int, value: int)
- size() -> int
- slice(begin: int, end: int = 2147483647) -> PackedInt64Array
- sort()
- to_byte_array() -> PackedByteArray

