## Wrapped [Short3].
extends AbstractData
class_name DataShort3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/short3.gd")],
}

var value: Short3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Short3.new()
		return value

func _to_variant() -> Variant:
	return value
