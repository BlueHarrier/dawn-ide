## Wrapped nullable [ULong2].
extends AbstractData
class_name DataNullableULong2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/ulong2.gd"), null]],
}

var value: ULong2

func _to_variant() -> Variant:
	return value
