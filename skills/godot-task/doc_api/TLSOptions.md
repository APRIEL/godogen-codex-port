## TLSOptions <- RefCounted

TLSOptions abstracts the configuration options for the StreamPeerTLS and PacketPeerDTLS classes. Objects of this class cannot be instantiated directly, and one of the static methods `client`, `client_unsafe`, or `server` should be used instead.

**Methods:**
- client(trusted_chain: X509Certificate = null, common_name_override: String = "") -> TLSOptions
- client_unsafe(trusted_chain: X509Certificate = null) -> TLSOptions
- get_common_name_override() -> String
- get_own_certificate() -> X509Certificate
- get_private_key() -> CryptoKey
- get_trusted_ca_chain() -> X509Certificate
- is_server() -> bool
- is_unsafe_client() -> bool
- server(key: CryptoKey, certificate: X509Certificate) -> TLSOptions

