## Wrapped nullable [Float4x4].
extends AbstractData
class_name DataNullableFloat4x4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/float4x4.gd"), null]],
}

var value: Float4x4

func _to_variant() -> Variant:
	return value
