## Wrapped [Double4x4].
extends AbstractData
class_name DataDouble4x4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/double4x4.gd")],
}

var value: Double4x4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Double4x4.new()
		return value

func _to_variant() -> Variant:
	return value
