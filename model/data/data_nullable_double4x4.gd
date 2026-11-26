## Wrapped nullable [Double4x4].
extends AbstractData
class_name DataNullableDouble4x4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/double4x4.gd"), null]],
}

var value: Double4x4

func _to_variant() -> Variant:
	return value
