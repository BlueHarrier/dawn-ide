## Wrapped nullable [Rect].
extends AbstractData
class_name DataNullableRect

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/rect.gd"), null]],
}

var value: Rect

func _to_variant() -> Variant:
	return value
