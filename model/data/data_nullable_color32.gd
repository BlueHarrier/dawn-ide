## Wrapped nullable [RLColor32].
extends AbstractData
class_name DataNullableColor32

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/color32.gd"), null]],
}

var value: RLColor32

func _to_variant() -> Variant:
	return value
