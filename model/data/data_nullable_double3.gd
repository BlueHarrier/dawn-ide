## Wrapped nullable [Double3].
extends AbstractData
class_name DataNullableDouble3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/double3.gd"), null]],
}

var value: Double3

func _to_variant() -> Variant:
	return value
