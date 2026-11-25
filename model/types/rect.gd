## Represents a 2D float rectangle.
extends RefCounted
class_name Rect

const SCHEMA = {
	"position": ["position", true, TYPE_OBJECT, "Float2"],
	"size": ["size", true, TYPE_OBJECT, "Float2"],
}

var position: Float2
var size: Float2

func _init(p_position: Float2 = Float2.new(), p_size: Float2 = Float2.new()) -> void:
	position = p_position
	size = p_size

## Creates a [Rect2] from the internal values.
func to_rect2() -> Rect2:
	return Rect2(position.to_vector2(), size.to_vector2())

