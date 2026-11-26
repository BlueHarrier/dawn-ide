## Wrapped nullable [Long3].
extends AbstractData
class_name DataNullableLong3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/long3.gd"), null]],
}

var value: Long3

func _to_variant() -> Variant:
	return value
