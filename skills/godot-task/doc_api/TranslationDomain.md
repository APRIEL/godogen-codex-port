## TranslationDomain <- RefCounted

TranslationDomain is a self-contained collection of Translation resources. Translations can be added to or removed from it. If you're working with the main translation domain, it is more convenient to use the wrap methods on TranslationServer.

**Props:**
- enabled: bool = true
- pseudolocalization_accents_enabled: bool = true
- pseudolocalization_double_vowels_enabled: bool = false
- pseudolocalization_enabled: bool = false
- pseudolocalization_expansion_ratio: float = 0.0
- pseudolocalization_fake_bidi_enabled: bool = false
- pseudolocalization_override_enabled: bool = false
- pseudolocalization_prefix: String = "["
- pseudolocalization_skip_placeholders_enabled: bool = true
- pseudolocalization_suffix: String = "]"

**Methods:**
- add_translation(translation: Translation)
- clear()
- find_translations(locale: String, exact: bool) -> Translation[]
- get_locale_override() -> String
- get_translation_object(locale: String) -> Translation
- get_translations() -> Translation[]
- has_translation(translation: Translation) -> bool
- has_translation_for_locale(locale: String, exact: bool) -> bool
- pseudolocalize(message: StringName) -> StringName
- remove_translation(translation: Translation)
- set_locale_override(locale: String)
- translate(message: StringName, context: StringName = &"") -> StringName
- translate_plural(message: StringName, message_plural: StringName, n: int, context: StringName = &"") -> StringName

