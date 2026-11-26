## Wrapped [RLColor32].
extends AbstractData
class_name DataColor32

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/color32.gd")],
}

var value: RLColor32:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = RLColor32.new()
		return value

func _to_variant() -> Variant:
	return value
