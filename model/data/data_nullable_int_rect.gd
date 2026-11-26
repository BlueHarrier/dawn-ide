## Wrapped nullable [IntRect].
extends AbstractData
class_name DataNullableIntRect

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/int_rect.gd"), null]],
}

var value: IntRect

func _to_variant() -> Variant:
	return value
