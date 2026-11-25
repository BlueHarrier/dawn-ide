## Represents an RGBA float color.
extends RefCounted
class_name RLColor

const SCHEMA = {
	"a": ["a", true, TYPE_FLOAT, null],
	"r": ["r", true, TYPE_FLOAT, null],
	"g": ["g", true, TYPE_FLOAT, null],
	"b": ["b", true, TYPE_FLOAT, null],
}

var a: float
var r: float
var g: float
var b: float

func _init(p_a: float = .0, p_r: float = .0, p_g: float = .0, p_b: float = .0) -> void:
	a = p_a
	r = p_r
	g = p_g
	b = p_b

## Creates a [Color] from the internal values.
func to_color() -> Color:
	return Color(r, g, b, a)
