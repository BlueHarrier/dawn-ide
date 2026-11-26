## Wrapped [Short4].
extends AbstractData
class_name DataShort4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/short4.gd")],
}

var value: Short4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Short4.new()
		return value

func _to_variant() -> Variant:
	return value
