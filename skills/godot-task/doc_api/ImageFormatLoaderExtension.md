## ImageFormatLoaderExtension <- ImageFormatLoader

The engine supports multiple image formats out of the box (PNG, SVG, JPEG, WebP to name a few), but you can choose to implement support for additional image formats by extending this class. Be sure to respect the documented return types and values. You should create an instance of it, and call `add_format_loader` to register that loader during the initialization phase.

**Methods:**
- add_format_loader()
- remove_format_loader()

