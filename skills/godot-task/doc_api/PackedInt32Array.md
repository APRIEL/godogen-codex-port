## PackedInt32Array

An array specifically designed to hold 32-bit integer values. Packs data tightly, so it saves memory for large array sizes. **Note:** This type stores signed 32-bit integers, which means it can take values in the interval `[-2^31, 2^31 - 1]`, i.e. `[-2147483648, 2147483647]`. Exceeding those bounds will wrap around. In comparison, [int] uses signed 64-bit integers which can hold much larger values. If you need to pack 64-bit integers tightly, see PackedInt64Array. **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use `duplicate`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again. **Note:** In a boolean context, a packed array will evaluate to `false` if it's empty. Otherwise, a packed array will always evaluate to `true`.

**Methods:**
- append(value: int) -> bool
- append_array(array: PackedInt32Array)
- bsearch(value: int, before: bool = true) -> int
- clear()
- count(value: int) -> int
- duplicate() -> PackedInt32Array
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
- slice(begin: int, end: int = 2147483647) -> PackedInt32Array
- sort()
- to_byte_array() -> PackedByteArray

