## Wrapped nullable [ULong4].
extends AbstractData
class_name DataNullableULong4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/ulong4.gd"), null]],
}

var value: ULong4

func _to_variant() -> Variant:
	return value
