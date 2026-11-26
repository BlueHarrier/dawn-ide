## Wrapped nullable [RLColorX].
extends AbstractData
class_name DataNullableColorX

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/color_x.gd"), null]],
}

var value: RLColorX

func _to_variant() -> Variant:
	return value
