## Represents a 3D boolean vector.
extends RefCounted
class_name Bool3

const SCHEMA = {
	"x": ["x", true, TYPE_BOOL, null],
	"y": ["y", true, TYPE_BOOL, null],
	"z": ["z", true, TYPE_BOOL, null],
}

var x: bool
var y: bool
var z: bool

func _init(p_x: bool = 0, p_y: bool = 0, p_z: bool = 0) -> void:
	x = p_x
	y = p_y
	z = p_z
