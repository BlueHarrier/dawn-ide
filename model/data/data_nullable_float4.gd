## Wrapped nullable [Float4].
extends AbstractData
class_name DataNullableFloat4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/float4.gd"), null]],
}

var value: Float4

func _to_variant() -> Variant:
	return value
