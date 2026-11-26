## Wrapped nullable [Bool4].
extends AbstractData
class_name DataNullableBool4

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/bool4.gd"), null]],
}

var value: Bool4

func _to_variant() -> Variant:
	return value
