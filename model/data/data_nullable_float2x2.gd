## Wrapped nullable [Float2x2].
extends AbstractData
class_name DataNullableFloat2x2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/float2x2.gd"), null]],
}

var value: Float2x2

func _to_variant() -> Variant:
	return value
