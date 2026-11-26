## Wrapped [UShort2].
extends AbstractData
class_name DataUShort2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/ushort2.gd")],
}

var value: UShort2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = UShort2.new()
		return value

func _to_variant() -> Variant:
	return value
