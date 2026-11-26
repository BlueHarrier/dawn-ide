## Wrapped [Int2].
extends AbstractData
class_name DataInt2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/int2.gd")],
}

var value: Int2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Int2.new()
		return value

func _to_variant() -> Variant:
	return value
