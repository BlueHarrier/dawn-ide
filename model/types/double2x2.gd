## Represents a 2x2 double matrix.
extends RefCounted
class_name Double2x2

const SCHEMA = {
	"m00": ["m00", true, TYPE_FLOAT, null],
	"m01": ["m01", true, TYPE_FLOAT, null],
	"m10": ["m10", true, TYPE_FLOAT, null],
	"m11": ["m11", true, TYPE_FLOAT, null],
}

var m00: float
var m01: float
var m10: float
var m11: float

func _init(p_m00: float = .0, p_m01: float = .0, p_m10: float = .0, p_m11: float = .0) -> void:
	m00 = p_m00
	m01 = p_m01
	m10 = p_m10
	m11 = p_m11

## Creates a [Transform2D] from the internal values with no origin.
## Keep in mind that Godot vectors use 32 bit long coordinates.
func to_transform2d() -> Transform2D:
	return Transform2D(
		Vector2(m00, m10),
		Vector2(m01, m11),
		Vector2.ZERO,
	)
