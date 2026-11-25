## Represents a 2D long vector.
extends RefCounted
class_name Long2

const SCHEMA = {
	"x": ["x", true, TYPE_INT, null],
	"y": ["y", true, TYPE_INT, null],
}

var x: int
var y: int

func _init(p_x: int = 0, p_y: int = 0) -> void:
	x = p_x
	y = p_y

## Creates a [Vector2i] from the internal values.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_vector2i() -> Vector2i:
	return Vector2i(x, y)
