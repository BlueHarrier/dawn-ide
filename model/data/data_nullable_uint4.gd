## Wrapped nullable [UInt4].
extends AbstractData
class_name DataNullableUInt4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/uint4.gd"), null]],
}

var value: UInt4

func _to_variant() -> Variant:
	return value
