## Represents a 2D int rectangle.
extends RefCounted
class_name IntRect

const SCHEMA = {
	"position": ["position", true, TYPE_OBJECT, "Int2"],
	"size": ["size", true, TYPE_OBJECT, "Int2"],
}

var position: Int2
var size: Int2

func _init(p_position: Int2, p_size: Int2) -> void:
	position = p_position
	size = p_size

## Creates a [Rect2i] from the internal values.
func to_rect2i() -> Rect2i:
	return Rect2i(position.to_vector2i(), size.to_vector2i())
