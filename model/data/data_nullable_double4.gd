## Wrapped nullable [Double4].
extends AbstractData
class_name DataNullableDouble4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/double4.gd"), null]],
}

var value: Double4

func _to_variant() -> Variant:
	return value
