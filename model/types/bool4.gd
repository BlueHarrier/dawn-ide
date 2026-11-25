## Represents a 4D boolean vector.
extends RefCounted
class_name Bool4

const SCHEMA = {
	"x": ["x", true, TYPE_BOOL, null],
	"y": ["y", true, TYPE_BOOL, null],
	"z": ["z", true, TYPE_BOOL, null],
	"w": ["w", true, TYPE_BOOL, null],
}

var x: bool
var y: bool
var z: bool
var w: bool

func _init(p_x: bool = 0, p_y: bool = 0, p_z: bool = 0, p_w: int = 0) -> void:
	x = p_x
	y = p_y
	z = p_z
	w = p_w
