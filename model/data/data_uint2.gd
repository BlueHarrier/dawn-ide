## Wrapped [UInt2].
extends AbstractData
class_name DataUInt2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/uint2.gd")],
}

var value: UInt2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = UInt2.new()
		return value

func _to_variant() -> Variant:
	return value
