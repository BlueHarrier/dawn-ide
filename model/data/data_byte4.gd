## Wrapped [Byte4].
extends AbstractData
class_name DataByte4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/byte4.gd")],
}

var value: Byte4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Byte4.new()
		return value

func _to_variant() -> Variant:
	return value
