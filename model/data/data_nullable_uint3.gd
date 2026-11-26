## Wrapped nullable [UInt3].
extends AbstractData
class_name DataNullableUInt3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/uint3.gd"), null]],
}

var value: UInt3

func _to_variant() -> Variant:
	return value
