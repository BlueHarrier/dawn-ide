## Wrapped nullable [SByte2].
extends AbstractData
class_name DataNullableSByte2

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/sbyte2.gd"), null]],
}

var value: SByte2

func _to_variant() -> Variant:
	return value
