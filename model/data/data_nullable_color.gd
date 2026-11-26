## Wrapped nullable [RLColor].
extends AbstractData
class_name DataNullableColor

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/color.gd"), null]],
}

var value: RLColor

func _to_variant() -> Variant:
	return value
