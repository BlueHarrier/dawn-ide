## Wrapped nullable [Long4].
extends AbstractData
class_name DataNullableLong4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/long4.gd"), null]],
}

var value: Long4

func _to_variant() -> Variant:
	return value
