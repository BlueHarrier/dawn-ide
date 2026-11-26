## Wrapped [SByte2].
extends AbstractData
class_name DataSByte2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/sbyte2.gd")],
}

var value: SByte2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = SByte2.new()
		return value

func _to_variant() -> Variant:
	return value
