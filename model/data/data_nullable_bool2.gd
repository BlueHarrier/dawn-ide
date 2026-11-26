## Wrapped nullable [Bool2].
extends AbstractData
class_name DataNullableBool2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/bool2.gd"), null]],
}

var value: Bool2

func _to_variant() -> Variant:
	return value
