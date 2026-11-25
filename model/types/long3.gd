## Represents a 3D long vector.
extends RefCounted
class_name Long3

const SCHEMA = {
	"x": ["x", true, TYPE_INT, null],
	"y": ["y", true, TYPE_INT, null],
	"z": ["z", true, TYPE_INT, null],
}

var x: int
var y: int
var z: int

func _init(p_x: int = 0, p_y: int = 0, p_z: int = 0) -> void:
	x = p_x
	y = p_y
	z = p_z

## Creates a [Vector3i] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_vector3i() -> Vector3i:
	return Vector3i(x, y, z)
