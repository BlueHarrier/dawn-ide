## Wrapped [UShort3].
extends AbstractData
class_name DataUShort3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/ushort3.gd")],
}

var value: UShort3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = UShort3.new()
		return value

func _to_variant() -> Variant:
	return value
