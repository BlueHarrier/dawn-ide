## Wrapped [UInt3].
extends AbstractData
class_name DataUInt3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/uint3.gd")],
}

var value: UInt3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = UInt3.new()
		return value

func _to_variant() -> Variant:
	return value
