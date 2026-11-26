## Wrapped nullable [Int2].
extends AbstractData
class_name DataNullableInt2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/int2.gd"), null]],
}

var value: Int2

func _to_variant() -> Variant:
	return value
