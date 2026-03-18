## OptimizedTranslation <- Translation

An optimized translation. Uses real-time compressed translations, which results in very small dictionaries. This class does not store the untranslated strings for optimization purposes. Therefore, `Translation.get_message_list` always returns an empty array, and `Translation.get_message_count` always returns `0`.

**Methods:**
- generate(from: Translation)

