## ScriptEditor <- PanelContainer

Godot editor's script editor. **Note:** This class shouldn't be instantiated directly. Instead, access the singleton using `EditorInterface.get_script_editor`.

**Methods:**
- clear_docs_from_script(script: Script)
- get_breakpoints() -> PackedStringArray
- get_current_editor() -> ScriptEditorBase
- get_current_script() -> Script
- get_open_script_editors() -> ScriptEditorBase[]
- get_open_scripts() -> Script[]
- goto_help(topic: String)
- goto_line(line_number: int)
- open_script_create_dialog(base_name: String, base_path: String)
- register_syntax_highlighter(syntax_highlighter: EditorSyntaxHighlighter)
- save_all_scripts()
- unregister_syntax_highlighter(syntax_highlighter: EditorSyntaxHighlighter)
- update_docs_from_script(script: Script)

**Signals:**
- editor_script_changed(script: Script)
- script_close(script: Script)

