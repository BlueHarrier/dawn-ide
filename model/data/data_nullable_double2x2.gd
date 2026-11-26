## Wrapped nullable [Double2x2].
extends AbstractData
class_name DataNullableDouble2x2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/double2x2.gd"), null]],
}

var value: Double2x2

func _to_variant() -> Variant:
	return value
