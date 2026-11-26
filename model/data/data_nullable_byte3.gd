## Wrapped nullable [Byte3].
extends AbstractData
class_name DataNullableByte3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/byte3.gd"), null]],
}

var value: Byte3

func _to_variant() -> Variant:
	return value
