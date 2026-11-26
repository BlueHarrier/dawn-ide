## Wrapped [UInt4].
extends AbstractData
class_name DataUInt4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/uint4.gd")],
}

var value: UInt4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = UInt4.new()
		return value

func _to_variant() -> Variant:
	return value
