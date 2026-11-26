## Wrapped nullable [ULong3].
extends AbstractData
class_name DataNullableULong3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/ulong3.gd"), null]],
}

var value: ULong3

func _to_variant() -> Variant:
	return value
