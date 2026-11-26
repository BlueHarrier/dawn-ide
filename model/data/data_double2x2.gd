## Wrapped [Double2x2].
extends AbstractData
class_name DataDouble2x2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/double2x2.gd")],
}

var value: Double2x2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Double2x2.new()
		return value

func _to_variant() -> Variant:
	return value
