## Wrapped nullable [DoubleQ].
extends AbstractData
class_name DataNullableDoubleQ

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/double_q.gd"), null]],
}

var value: DoubleQ

func _to_variant() -> Variant:
	return value
