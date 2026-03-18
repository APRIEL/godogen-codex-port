# Coordinating Scene And Script Work

When a task changes both scenes and scripts:

1. Generate scenes first.
2. Name nodes predictably.
3. Attach scripts in the scene builder.
4. Connect runtime signals in scripts, not in scene builders.
5. Ensure each script's `extends` matches the node it attaches to.
