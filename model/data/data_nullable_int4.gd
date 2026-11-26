## Wrapped nullable [Int4].
extends AbstractData
class_name DataNullableInt4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/int4.gd"), null]],
}

var value: Int4

func _to_variant() -> Variant:
	return value
