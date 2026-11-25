## Represents a double quaternion.
extends RefCounted
class_name DoubleQ

const SCHEMA = {
	"w": ["w", true, TYPE_FLOAT, null],
	"x": ["x", true, TYPE_FLOAT, null],
	"y": ["y", true, TYPE_FLOAT, null],
	"z": ["z", true, TYPE_FLOAT, null],
}

var w: float
var x: float
var y: float
var z: float

func _init(p_w: float = .0, p_x: float = .0, p_y: float = .0, p_z: float = .0) -> void:
	w = p_w
	x = p_x
	y = p_y
	z = p_z

## Creates a [Quaternion] from the internal values.
## Keep in mind that Godot quaternions use 32 bit long coordinates.
func to_quaternion() -> Quaternion:
	return Quaternion(x, y, z, w)
