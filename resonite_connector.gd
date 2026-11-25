extends Node

const WS_URL = "ws://localhost:39122"

@onready var socket: ResoniteSocket = $ResoniteSocket
@onready var tree: Tree = $PanelContainer/HBoxContainer/ScrollContainer/Tree

var _refs: Dictionary[String, TreeItem] = {}

func _ready() -> void:
	socket.socket_connected.connect(_on_socket_connected)
	socket.socket_disconnected.connect(_on_socket_disconnected)
	socket.socket_message_string.connect(_on_socket_message_string)
	socket.socket_message_json.connect(_on_socket_message_json)
	var err := socket.connect_to_url(WS_URL)
	if err != OK:
		printerr("Error connecting to websocket: %s." % error_string(err))


func _on_socket_connected() -> void:
	print("Connected to Resonite!")
	var root := {
		"$type": "getSlot",
		"slotId": "Root",
		"includeComponentData": false,
		"depth": 0
	}
	socket.send_json(root)

func _on_socket_disconnected(reason: String, code: int) -> void:
	print("Disconnected from Resonite: %s (%s)" % [reason, code])
	_refs = {}
	tree.clear()

func _on_socket_message_string(msg: String) -> void:
	print("Received string message: %s" % [msg])

func _on_socket_message_json(msg: JSON) -> void:
	print("Received Json message: %s" % [msg.data])
	if msg.data is not Dictionary:
		return
	var slot := msg.data as Dictionary
	var data := slot["data"] as Dictionary
	var parent := data["parent"] as Dictionary
	var item: TreeItem
	if parent["targetId"]:
		var parent_item := _refs[parent["targetId"]]
		item = parent_item.create_child()
		parent_item.collapsed = true
	else:
		item = tree.create_item()
	item.set_text(0, data["name"]["value"])
	_refs[data["id"]] = item
	if data["children"]:
		for child_slot: Dictionary in data["children"]:
			var req := {
				"$type": "getSlot",
				"slotId": child_slot["id"],
				"includeComponentData": false,
				"depth": 0
			}
			socket.send_json(req)
