## HTTPRequest <- Node

A node with the ability to send HTTP requests. Uses HTTPClient internally. Can be used to make HTTP requests, i.e. download or upload files or web content via HTTP. **Warning:** See the notes and warnings on HTTPClient for limitations, especially regarding TLS security. **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android. **Example:** Contact a REST API and print one of its returned fields: **Example:** Load an image using HTTPRequest and display it: **Note:** HTTPRequest nodes will automatically handle decompression of response bodies. An `Accept-Encoding` header will be automatically added to each of your requests, unless one is already specified. Any response with a `Content-Encoding: gzip` header will automatically be decompressed and delivered to you as uncompressed bytes.

**Props:**
- accept_gzip: bool = true
- body_size_limit: int = -1
- download_chunk_size: int = 65536
- download_file: String = ""
- max_redirects: int = 8
- timeout: float = 0.0
- use_threads: bool = false

**Methods:**
- cancel_request()
- get_body_size() -> int
- get_downloaded_bytes() -> int
- get_http_client_status() -> int
- request(url: String, custom_headers: PackedStringArray = PackedStringArray(), method: int = 0, request_data: String = "") -> int
- request_raw(url: String, custom_headers: PackedStringArray = PackedStringArray(), method: int = 0, request_data_raw: PackedByteArray = PackedByteArray()) -> int
- set_http_proxy(host: String, port: int)
- set_https_proxy(host: String, port: int)
- set_tls_options(client_options: TLSOptions)

**Signals:**
- request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray)

**Enums:**
**Result:** RESULT_SUCCESS=0, RESULT_CHUNKED_BODY_SIZE_MISMATCH=1, RESULT_CANT_CONNECT=2, RESULT_CANT_RESOLVE=3, RESULT_CONNECTION_ERROR=4, RESULT_TLS_HANDSHAKE_ERROR=5, RESULT_NO_RESPONSE=6, RESULT_BODY_SIZE_LIMIT_EXCEEDED=7, RESULT_BODY_DECOMPRESS_FAILED=8, RESULT_REQUEST_FAILED=9, ...

