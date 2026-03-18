## Crypto <- RefCounted

The Crypto class provides access to advanced cryptographic functionalities. Currently, this includes asymmetric key encryption/decryption, signing/verification, and generating cryptographically secure random bytes, RSA keys, HMAC digests, and self-signed X509Certificates.

**Methods:**
- constant_time_compare(trusted: PackedByteArray, received: PackedByteArray) -> bool
- decrypt(key: CryptoKey, ciphertext: PackedByteArray) -> PackedByteArray
- encrypt(key: CryptoKey, plaintext: PackedByteArray) -> PackedByteArray
- generate_random_bytes(size: int) -> PackedByteArray
- generate_rsa(size: int) -> CryptoKey
- generate_self_signed_certificate(key: CryptoKey, issuer_name: String = "CN=myserver,O=myorganisation,C=IT", not_before: String = "20140101000000", not_after: String = "20340101000000") -> X509Certificate
- hmac_digest(hash_type: int, key: PackedByteArray, msg: PackedByteArray) -> PackedByteArray
- sign(hash_type: int, hash: PackedByteArray, key: CryptoKey) -> PackedByteArray
- verify(hash_type: int, hash: PackedByteArray, signature: PackedByteArray, key: CryptoKey) -> bool

