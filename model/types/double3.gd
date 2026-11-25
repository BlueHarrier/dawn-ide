## Represents a 3D double vector.
extends RefCounted
class_name Double3

const SCHEMA = {
	"x": ["x", true, TYPE_FLOAT, null],
	"y": ["y", true, TYPE_FLOAT, null],
	"z": ["z", true, TYPE_FLOAT, null],
}

var x: float
var y: float
var z: float

func _init(p_x: float = .0, p_y: float = .0, p_z: float = .0) -> void:
	x = p_x
	y = p_y
	z = p_z

## Creates a [Vector3i] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_vector3() -> Vector3:
	return Vector3(x, y, z)
