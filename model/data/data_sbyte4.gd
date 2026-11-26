## Wrapped [SByte4].
extends AbstractData
class_name DataSByte4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/sbyte4.gd")],
}

var value: SByte4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = SByte4.new()
		return value

func _to_variant() -> Variant:
	return value
