## Wrapped nullable [Short3].
extends AbstractData
class_name DataNullableShort3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/short3.gd"), null]],
}

var value: Short3

func _to_variant() -> Variant:
	return value
