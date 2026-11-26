## Wrapped nullable [Float3].
extends AbstractData
class_name DataNullableFloat3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/float3.gd"), null]],
}

var value: Float3

func _to_variant() -> Variant:
	return value
