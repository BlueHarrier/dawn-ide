## Represents an RGBA float color with a profile.
extends RefCounted
class_name RLColorX

const SCHEMA = {
	"profile": ["profile", true, TYPE_STRING, null],
	"a": ["a", true, TYPE_FLOAT, null],
	"r": ["r", true, TYPE_FLOAT, null],
	"g": ["g", true, TYPE_FLOAT, null],
	"b": ["b", true, TYPE_FLOAT, null],
}

var profile: String
var a: float
var r: float
var g: float
var b: float

func _init(p_profile: String = "linear", p_a: float = .0, p_r: float = .0, p_g: float = .0, p_b: float = .0) -> void:
	profile = p_profile
	a = p_a
	r = p_r
	g = p_g
	b = p_b

## Creates a [Color] from the internal values.
## Profile will be ignored.
func to_color() -> Color:
	return Color(r, g, b, a)
