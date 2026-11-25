## Represents a 4D double vector.
extends RefCounted
class_name Double4

const SCHEMA = {
	"x": ["x", true, TYPE_FLOAT, null],
	"y": ["y", true, TYPE_FLOAT, null],
	"z": ["z", true, TYPE_FLOAT, null],
	"w": ["w", true, TYPE_FLOAT, null],
}

var x: float
var y: float
var z: float
var w: float

func _init(p_x: float = .0, p_y: float = .0, p_z: float = .0, p_w: float = .0) -> void:
	x = p_x
	y = p_y
	z = p_z
	w = p_w

## Creates a [Vector4] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_vector4() -> Vector4:
	return Vector4(x, y, z, w)
