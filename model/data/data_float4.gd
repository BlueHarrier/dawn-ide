## Wrapped [Float4].
extends AbstractData
class_name DataFloat4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/float4.gd")],
}

var value: Float4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Float4.new()
		return value

func _to_variant() -> Variant:
	return value
