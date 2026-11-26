## Wrapped [Short2].
extends AbstractData
class_name DataShort2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/short2.gd")],
}

var value: Short2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Short2.new()
		return value

func _to_variant() -> Variant:
	return value
