## Wrapped [RLColor].
extends AbstractData
class_name DataColor

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/color.gd")],
}

var value: RLColor:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = RLColor.new()
		return value

func _to_variant() -> Variant:
	return value
