## PackedStringArray

An array specifically designed to hold Strings. Packs data tightly, so it saves memory for large array sizes. If you want to join the strings in the array, use `String.join`. **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. PackedStringArray versus `ArrayString`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as `Array.map`. Typed arrays are in turn faster to iterate on and modify than untyped arrays. **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use `duplicate`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again. **Note:** In a boolean context, a packed array will evaluate to `false` if it's empty. Otherwise, a packed array will always evaluate to `true`.

**Methods:**
- append(value: String) -> bool
- append_array(array: PackedStringArray)
- bsearch(value: String, before: bool = true) -> int
- clear()
- count(value: String) -> int
- duplicate() -> PackedStringArray
- erase(value: String) -> bool
- fill(value: String)
- find(value: String, from: int = 0) -> int
- get(index: int) -> String
- has(value: String) -> bool
- insert(at_index: int, value: String) -> int
- is_empty() -> bool
- push_back(value: String) -> bool
- remove_at(index: int)
- resize(new_size: int) -> int
- reverse()
- rfind(value: String, from: int = -1) -> int
- set(index: int, value: String)
- size() -> int
- slice(begin: int, end: int = 2147483647) -> PackedStringArray
- sort()
- to_byte_array() -> PackedByteArray

