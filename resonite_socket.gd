extends Node
class_name ResoniteSocket

signal socket_connected()
signal socket_disconnected(reason: String, code: int)
signal socket_message_string(msg: String)
signal socket_message_json(msg: JSON)

var _socket := WebSocketPeer.new()
var _current_state := WebSocketPeer.STATE_CLOSED

func _physics_process(_delta: float) -> void:
	_socket.poll()
	var state := _socket.get_ready_state()
	if _current_state != state:
		if state == WebSocketPeer.STATE_OPEN:
			socket_connected.emit()
		elif state == WebSocketPeer.STATE_CLOSED:
			var code := _socket.get_close_code()
			var reason := _socket.get_close_reason()
			socket_disconnected.emit(reason, code)
		_current_state = state
	if _current_state == WebSocketPeer.STATE_OPEN:
		while _socket.get_available_packet_count():
			var msg := _socket.get_packet().get_string_from_utf8()
			var json := JSON.new()
			var err := json.parse(msg)
			if err != OK:
				socket_message_string.emit(msg)
			else:
				socket_message_json.emit(json)

func connect_to_url(url: String, tls_options: TLSOptions = null) -> int:
	return _socket.connect_to_url(url, tls_options)

func send_string(msg: String) -> int:
	return _socket.send_text(msg)

func send_json(msg: Variant) -> int:
	return send_string(JSON.stringify(msg))
