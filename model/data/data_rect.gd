## Wrapped [Rect].
extends AbstractData
class_name DataRect

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/rect.gd")],
}

var value: Rect:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Rect.new()
		return value

func _to_variant() -> Variant:
	return value
