## Wrapped [Byte2].
extends AbstractData
class_name DataByte2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/byte2.gd")],
}

var value: Byte2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Byte2.new()
		return value

func _to_variant() -> Variant:
	return value
