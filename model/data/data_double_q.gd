## Wrapped [DoubleQ].
extends AbstractData
class_name DataDoubleQ

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/double_q.gd")],
}

var value: DoubleQ:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = DoubleQ.new()
		return value

func _to_variant() -> Variant:
	return value
