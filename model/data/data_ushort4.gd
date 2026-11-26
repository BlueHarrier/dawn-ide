## Wrapped [UShort4].
extends AbstractData
class_name DataUShort4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/ushort4.gd")],
}

var value: UShort4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = UShort4.new()
		return value

func _to_variant() -> Variant:
	return value
