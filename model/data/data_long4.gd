## Wrapped [Long4].
extends AbstractData
class_name DataLong4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/long4.gd")],
}

var value: Long4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Long4.new()
		return value

func _to_variant() -> Variant:
	return value
