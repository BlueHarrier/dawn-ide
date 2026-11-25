## Represents a 4D long vector.
extends RefCounted
class_name Long4

const SCHEMA = {
	"x": ["x", true, TYPE_INT, null],
	"y": ["y", true, TYPE_INT, null],
	"z": ["z", true, TYPE_INT, null],
	"w": ["w", true, TYPE_INT, null],
}

var x: int
var y: int
var z: int
var w: int

func _init(p_x: int = 0, p_y: int = 0, p_z: int = 0, p_w: int = 0) -> void:
	x = p_x
	y = p_y
	z = p_z
	w = p_w

## Creates a [Vector4i] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_vector4i() -> Vector4i:
	return Vector4i(x, y, z, w)
