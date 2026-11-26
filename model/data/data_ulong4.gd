## Wrapped [ULong4].
extends AbstractData
class_name DataULong4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/ulong4.gd")],
}

var value: ULong4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = ULong4.new()
		return value

func _to_variant() -> Variant:
	return value
