## Wrapped nullable [BoundingBox].
extends AbstractData
class_name DataNullableBoundingBox

const SCHEMA = {
	"value": ["value", true, [TYPE_OBJECT, TYPE_NIL], [preload("res://model/types/bounding_box.gd"), null]],
}

var value: BoundingBox

func _to_variant() -> Variant:
	return value
