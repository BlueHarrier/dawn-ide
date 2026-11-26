## Wrapped nullable [Short4].
extends AbstractData
class_name DataNullableShort4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/short4.gd"), null]],
}

var value: Short4

func _to_variant() -> Variant:
	return value
