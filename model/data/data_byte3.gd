## Wrapped [Byte3].
extends AbstractData
class_name DataByte3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/byte3.gd")],
}

var value: Byte3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Byte3.new()
		return value

func _to_variant() -> Variant:
	return value
