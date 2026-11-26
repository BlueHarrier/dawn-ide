## Wrapped nullable [Double3x3].
extends AbstractData
class_name DataNullableDouble3x3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/double3x3.gd"), null]],
}

var value: Double3x3

func _to_variant() -> Variant:
	return value
