## Array

An array data structure that can contain a sequence of elements of any Variant type by default. Values can optionally be constrained to a specific type by creating a *typed array*. Elements are accessed by a numerical index starting at `0`. Negative indices are used to count from the back (`-1` is the last element, `-2` is the second to last, etc.). **Note:** Arrays are always passed by **reference**. To get a copy of an array that can be modified independently of the original array, use `duplicate`. **Note:** Erasing elements while iterating over arrays is **not** supported and will result in unpredictable behavior. **Note:** In a boolean context, an array will evaluate to `false` if it's empty (`[]`). Otherwise, an array will always evaluate to `true`. **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. PackedInt64Array versus `Array[int]`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as `Array.map`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

**Methods:**
- all(method: Callable) -> bool
- any(method: Callable) -> bool
- append(value: Variant)
- append_array(array: Array)
- assign(array: Array)
- back() -> Variant
- bsearch(value: Variant, before: bool = true) -> int
- bsearch_custom(value: Variant, func: Callable, before: bool = true) -> int
- clear()
- count(value: Variant) -> int
- duplicate(deep: bool = false) -> Array
- duplicate_deep(deep_subresources_mode: int = 1) -> Array
- erase(value: Variant)
- fill(value: Variant)
- filter(method: Callable) -> Array
- find(what: Variant, from: int = 0) -> int
- find_custom(method: Callable, from: int = 0) -> int
- front() -> Variant
- get(index: int) -> Variant
- get_typed_builtin() -> int
- get_typed_class_name() -> StringName
- get_typed_script() -> Variant
- has(value: Variant) -> bool
- hash() -> int
- insert(position: int, value: Variant) -> int
- is_empty() -> bool
- is_read_only() -> bool
- is_same_typed(array: Array) -> bool
- is_typed() -> bool
- make_read_only()
- map(method: Callable) -> Array
- max() -> Variant
- min() -> Variant
- pick_random() -> Variant
- pop_at(position: int) -> Variant
- pop_back() -> Variant
- pop_front() -> Variant
- push_back(value: Variant)
- push_front(value: Variant)
- reduce(method: Callable, accum: Variant = null) -> Variant
- remove_at(position: int)
- resize(size: int) -> int
- reverse()
- rfind(what: Variant, from: int = -1) -> int
- rfind_custom(method: Callable, from: int = -1) -> int
- set(index: int, value: Variant)
- shuffle()
- size() -> int
- slice(begin: int, end: int = 2147483647, step: int = 1, deep: bool = false) -> Array
- sort()
- sort_custom(func: Callable)

