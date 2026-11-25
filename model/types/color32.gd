## Represents an RGBA byte color.
extends RefCounted
class_name RLColor32

const SCHEMA = {
	"a": ["a", true, TYPE_INT, null],
	"r": ["r", true, TYPE_INT, null],
	"g": ["g", true, TYPE_INT, null],
	"b": ["b", true, TYPE_INT, null],
}

var a: int
var r: int
var g: int
var b: int

func _init(p_a: int = 0, p_r: int = 0, p_g: int = 0, p_b: int = 0) -> void:
	a = p_a
	r = p_r
	g = p_g
	b = p_b

## Creates a [Color] from the internal values.
func to_color() -> Color:
	return Color.from_rgba8(r, g, b, a)
