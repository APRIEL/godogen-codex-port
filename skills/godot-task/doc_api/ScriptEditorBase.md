## ScriptEditorBase <- Control

Base editor for editing scripts in the ScriptEditor. This does not include documentation items.

**Methods:**
- add_syntax_highlighter(highlighter: EditorSyntaxHighlighter)
- get_base_editor() -> Control

**Signals:**
- edited_script_changed
- go_to_help(what: String)
- go_to_method(script: Object, method: String)
- name_changed
- replace_in_files_requested(text: String)
- request_help(topic: String)
- request_open_script_at_line(script: Object, line: int)
- request_save_history
- request_save_previous_state(state: Dictionary)
- search_in_files_requested(text: String)

