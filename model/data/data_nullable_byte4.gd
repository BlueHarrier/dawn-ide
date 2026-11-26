## Wrapped nullable [Byte4].
extends AbstractData
class_name DataNullableByte4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/byte4.gd"), null]],
}

var value: Byte4

func _to_variant() -> Variant:
	return value
