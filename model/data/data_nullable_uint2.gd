## Wrapped nullable [UInt2].
extends AbstractData
class_name DataNullableUInt2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/uint2.gd"), null]],
}

var value: UInt2

func _to_variant() -> Variant:
	return value
