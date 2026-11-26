## Wrapped [Long2].
extends AbstractData
class_name DataLong2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/long2.gd")],
}

var value: Long2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Long2.new()
		return value

func _to_variant() -> Variant:
	return value
