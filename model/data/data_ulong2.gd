## Wrapped [ULong2].
extends AbstractData
class_name DataULong2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/ulong2.gd")],
}

var value: ULong2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = ULong2.new()
		return value

func _to_variant() -> Variant:
	return value
