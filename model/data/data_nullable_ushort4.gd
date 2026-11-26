## Wrapped nullable [UShort4].
extends AbstractData
class_name DataNullableUShort4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/ushort4.gd"), null]],
}

var value: UShort4

func _to_variant() -> Variant:
	return value
