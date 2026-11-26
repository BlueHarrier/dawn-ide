## Wrapped nullable [Float2].
extends AbstractData
class_name DataNullableFloat2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/float2.gd"), null]],
}

var value: Float2

func _to_variant() -> Variant:
	return value
