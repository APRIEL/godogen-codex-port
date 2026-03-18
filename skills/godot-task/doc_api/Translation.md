## Translation <- Resource

Translation maps a collection of strings to their individual translations, and also provides convenience methods for pluralization. A Translation consists of messages. A message is identified by its context and untranslated string. Unlike , using an empty context string in Godot means not using any context.

**Props:**
- locale: String = "en"
- plural_rules_override: String = ""

**Methods:**
- add_message(src_message: StringName, xlated_message: StringName, context: StringName = &"")
- add_plural_message(src_message: StringName, xlated_messages: PackedStringArray, context: StringName = &"")
- erase_message(src_message: StringName, context: StringName = &"")
- get_message(src_message: StringName, context: StringName = &"") -> StringName
- get_message_count() -> int
- get_message_list() -> PackedStringArray
- get_plural_message(src_message: StringName, src_plural_message: StringName, n: int, context: StringName = &"") -> StringName
- get_translated_message_list() -> PackedStringArray

