## Represents a 2D double vector.
extends RefCounted
class_name Double2

const SCHEMA = {
	"x": ["x", true, TYPE_FLOAT, null],
	"y": ["y", true, TYPE_FLOAT, null],
}

var x: float
var y: float

func _init(p_x: float = .0, p_y: float = .0) -> void:
	x = p_x
	y = p_y

## Creates a [Vector2] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_vector2() -> Vector2:
	return Vector2(x, y)
