## Wrapped [Float3].
extends AbstractData
class_name DataFloat3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/float3.gd")],
}

var value: Float3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Float3.new()
		return value

func _to_variant() -> Variant:
	return value
