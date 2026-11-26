## Wrapped nullable [UShort3].
extends AbstractData
class_name DataNullableUShort3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/ushort3.gd"), null]],
}

var value: UShort3

func _to_variant() -> Variant:
	return value
