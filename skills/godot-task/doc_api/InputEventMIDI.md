## InputEventMIDI <- InputEvent

InputEventMIDI stores information about messages from (Musical Instrument Digital Interface) devices. These may include musical keyboards, synthesizers, and drum machines. MIDI messages can be received over a 5-pin MIDI connector or over USB. If your device supports both be sure to check the settings in the device to see which output it is using. By default, Godot does not detect MIDI devices. You need to call `OS.open_midi_inputs`, first. You can check which devices are detected with `OS.get_connected_midi_inputs`, and close the connection with `OS.close_midi_inputs`. **Note:** Godot does not support MIDI output, so there is no way to emit MIDI messages from Godot. Only MIDI input is supported. **Note:** On the Web platform, using MIDI input requires a browser permission to be granted first. This permission request is performed when calling `OS.open_midi_inputs`. MIDI input will not work until the user accepts the permission request.

**Props:**
- channel: int = 0
- controller_number: int = 0
- controller_value: int = 0
- instrument: int = 0
- message: int (MIDIMessage) = 0
- pitch: int = 0
- pressure: int = 0
- velocity: int = 0

