## Wrapped [Float2].
extends AbstractData
class_name DataFloat2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/float2.gd")],
}

var value: Float2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Float2.new()
		return value

func _to_variant() -> Variant:
	return value
