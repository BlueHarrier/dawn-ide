## Wrapped [FloatQ].
extends AbstractData
class_name DataFloatQ

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/float_q.gd")],
}

var value: FloatQ:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = FloatQ.new()
		return value

func _to_variant() -> Variant:
	return value
