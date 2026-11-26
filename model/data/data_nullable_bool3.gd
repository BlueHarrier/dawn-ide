## Wrapped nullable [Bool3].
extends AbstractData
class_name DataNullableBool3

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/bool3.gd"), null]],
}

var value: Bool3

func _to_variant() -> Variant:
	return value
