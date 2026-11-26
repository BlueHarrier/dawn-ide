## Wrapped [Int3].
extends AbstractData
class_name DataInt3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/int3.gd")],
}

var value: Int3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Int3.new()
		return value

func _to_variant() -> Variant:
	return value
