## Wrapped [IntRect].
extends AbstractData
class_name DataIntRect

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/int_rect.gd")],
}

var value: IntRect:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = IntRect.new()
		return value

func _to_variant() -> Variant:
	return value
