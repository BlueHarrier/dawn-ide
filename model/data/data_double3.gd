## Wrapped [Double3].
extends AbstractData
class_name DataDouble3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/double3.gd")],
}

var value: Double3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Double3.new()
		return value

func _to_variant() -> Variant:
	return value
