## Wrapped nullable [Short2].
extends AbstractData
class_name DataNullableShort2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/short2.gd"), null]],
}

var value: Short2

func _to_variant() -> Variant:
	return value
