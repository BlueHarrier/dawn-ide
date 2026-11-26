## Wrapped [Int4].
extends AbstractData
class_name DataInt4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/int4.gd")],
}

var value: Int4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Int4.new()
		return value

func _to_variant() -> Variant:
	return value
