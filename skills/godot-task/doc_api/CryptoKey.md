## CryptoKey <- Resource

The CryptoKey class represents a cryptographic key. Keys can be loaded and saved like any other Resource. They can be used to generate a self-signed X509Certificate via `Crypto.generate_self_signed_certificate` and as private key in `StreamPeerTLS.accept_stream` along with the appropriate certificate.

**Methods:**
- is_public_only() -> bool
- load(path: String, public_only: bool = false) -> int
- load_from_string(string_key: String, public_only: bool = false) -> int
- save(path: String, public_only: bool = false) -> int
- save_to_string(public_only: bool = false) -> String

