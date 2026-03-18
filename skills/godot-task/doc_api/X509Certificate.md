## X509Certificate <- Resource

The X509Certificate class represents an X509 certificate. Certificates can be loaded and saved like any other Resource. They can be used as the server certificate in `StreamPeerTLS.accept_stream` (along with the proper CryptoKey), and to specify the only certificate that should be accepted when connecting to a TLS server via `StreamPeerTLS.connect_to_stream`.

**Methods:**
- load(path: String) -> int
- load_from_string(string: String) -> int
- save(path: String) -> int
- save_to_string() -> String

