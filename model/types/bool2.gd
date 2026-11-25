## Represents a 2D boolean vector.
extends RefCounted
class_name Bool2

const SCHEMA = {
	"x": ["x", true, TYPE_BOOL, null],
	"y": ["y", true, TYPE_BOOL, null],
}

var x: bool
var y: bool

func _init(p_x: bool = 0, p_y: bool = 0) -> void:
	x = p_x
	y = p_y
