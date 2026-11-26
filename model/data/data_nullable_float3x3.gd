## Wrapped nullable [Float3x3].
extends AbstractData
class_name DataNullableFloat3x3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/float3x3.gd"), null]],
}

var value: Float3x3

func _to_variant() -> Variant:
	return value
