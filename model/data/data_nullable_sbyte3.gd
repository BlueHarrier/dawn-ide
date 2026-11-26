## Wrapped nullable [SByte3].
extends AbstractData
class_name DataNullableSByte3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/sbyte3.gd"), null]],
}

var value: SByte3

func _to_variant() -> Variant:
	return value
