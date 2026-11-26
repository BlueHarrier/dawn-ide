## Wrapped nullable [UShort2].
extends AbstractData
class_name DataNullableUShort2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/ushort2.gd"), null]],
}

var value: UShort2

func _to_variant() -> Variant:
	return value
