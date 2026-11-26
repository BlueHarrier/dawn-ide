## Wrapped nullable [Long2].
extends AbstractData
class_name DataNullableLong2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/long2.gd"), null]],
}

var value: Long2

func _to_variant() -> Variant:
	return value
