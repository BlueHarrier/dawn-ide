## Wrapped [Long3].
extends AbstractData
class_name DataLong3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/long3.gd")],
}

var value: Long3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Long3.new()
		return value

func _to_variant() -> Variant:
	return value
