## Wrapped nullable [FloatQ].
extends AbstractData
class_name DataNullableFloatQ

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/float_q.gd"), null]],
}

var value: FloatQ

func _to_variant() -> Variant:
	return value
