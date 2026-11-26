## Wrapped nullable [Byte2].
extends AbstractData
class_name DataNullableByte2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/byte2.gd"), null]],
}

var value: Byte2

func _to_variant() -> Variant:
	return value
