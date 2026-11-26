## Wrapped nullable [Int3].
extends AbstractData
class_name DataNullableInt3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/int3.gd"), null]],
}

var value: Int3

func _to_variant() -> Variant:
	return value
