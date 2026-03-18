## HTTPClient <- RefCounted

Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases. See the HTTPRequest node for a higher-level alternative. **Note:** This client only needs to connect to a host once (see `connect_to_host`) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See `request` for a full example and to get started. An HTTPClient should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports Transport Layer Security (TLS), including server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side. For more information on HTTP, see (or read to get it straight from the source). **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android. **Note:** It's recommended to use transport encryption (TLS) and to avoid sending sensitive information (such as login credentials) in HTTP GET URL parameters. Consider using HTTP POST requests or HTTP headers for such information instead. **Note:** When performing HTTP requests from a project exported to Web, keep in mind the remote server may not allow requests from foreign origins due to . If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the `Access-Control-Allow-Origin: *` HTTP header. **Note:** TLS support is currently limited to TLSv1.2 and TLSv1.3. Attempting to connect to a server that only supports older (insecure) TLS versions will return an error. **Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

**Props:**
- blocking_mode_enabled: bool = false
- connection: StreamPeer
- read_chunk_size: int = 65536

**Methods:**
- close()
- connect_to_host(host: String, port: int = -1, tls_options: TLSOptions = null) -> int
- get_response_body_length() -> int
- get_response_code() -> int
- get_response_headers() -> PackedStringArray
- get_response_headers_as_dictionary() -> Dictionary
- get_status() -> int
- has_response() -> bool
- is_response_chunked() -> bool
- poll() -> int
- query_string_from_dict(fields: Dictionary) -> String
- read_response_body_chunk() -> PackedByteArray
- request(method: int, url: String, headers: PackedStringArray, body: String = "") -> int
- request_raw(method: int, url: String, headers: PackedStringArray, body: PackedByteArray) -> int
- set_http_proxy(host: String, port: int)
- set_https_proxy(host: String, port: int)

**Enums:**
**Method:** METHOD_GET=0, METHOD_HEAD=1, METHOD_POST=2, METHOD_PUT=3, METHOD_DELETE=4, METHOD_OPTIONS=5, METHOD_TRACE=6, METHOD_CONNECT=7, METHOD_PATCH=8, METHOD_MAX=9
**Status:** STATUS_DISCONNECTED=0, STATUS_RESOLVING=1, STATUS_CANT_RESOLVE=2, STATUS_CONNECTING=3, STATUS_CANT_CONNECT=4, STATUS_CONNECTED=5, STATUS_REQUESTING=6, STATUS_BODY=7, STATUS_CONNECTION_ERROR=8, STATUS_TLS_HANDSHAKE_ERROR=9
**ResponseCode:** RESPONSE_CONTINUE=100, RESPONSE_SWITCHING_PROTOCOLS=101, RESPONSE_PROCESSING=102, RESPONSE_OK=200, RESPONSE_CREATED=201, RESPONSE_ACCEPTED=202, RESPONSE_NON_AUTHORITATIVE_INFORMATION=203, RESPONSE_NO_CONTENT=204, RESPONSE_RESET_CONTENT=205, RESPONSE_PARTIAL_CONTENT=206, ...

