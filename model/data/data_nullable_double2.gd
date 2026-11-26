## Wrapped nullable [Double2].
extends AbstractData
class_name DataNullableDouble2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/double2.gd"), null]],
}

var value: Double2

func _to_variant() -> Variant:
	return value
