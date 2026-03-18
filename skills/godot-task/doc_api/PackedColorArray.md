## PackedColorArray

An array specifically designed to hold Color. Packs data tightly, so it saves memory for large array sizes. **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. PackedColorArray versus `ArrayColor`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as `Array.map`. Typed arrays are in turn faster to iterate on and modify than untyped arrays. **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use `duplicate`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again. **Note:** In a boolean context, a packed array will evaluate to `false` if it's empty. Otherwise, a packed array will always evaluate to `true`.

**Methods:**
- append(value: Color) -> bool
- append_array(array: PackedColorArray)
- bsearch(value: Color, before: bool = true) -> int
- clear()
- count(value: Color) -> int
- duplicate() -> PackedColorArray
- erase(value: Color) -> bool
- fill(value: Color)
- find(value: Color, from: int = 0) -> int
- get(index: int) -> Color
- has(value: Color) -> bool
- insert(at_index: int, value: Color) -> int
- is_empty() -> bool
- push_back(value: Color) -> bool
- remove_at(index: int)
- resize(new_size: int) -> int
- reverse()
- rfind(value: Color, from: int = -1) -> int
- set(index: int, value: Color)
- size() -> int
- slice(begin: int, end: int = 2147483647) -> PackedColorArray
- sort()
- to_byte_array() -> PackedByteArray

