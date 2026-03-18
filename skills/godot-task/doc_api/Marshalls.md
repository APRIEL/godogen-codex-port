## Marshalls <- Object

Provides data transformation and encoding utility functions.

**Methods:**
- base64_to_raw(base64_str: String) -> PackedByteArray
- base64_to_utf8(base64_str: String) -> String
- base64_to_variant(base64_str: String, allow_objects: bool = false) -> Variant
- raw_to_base64(array: PackedByteArray) -> String
- utf8_to_base64(utf8_str: String) -> String
- variant_to_base64(variant: Variant, full_objects: bool = false) -> String

