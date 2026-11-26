## Wrapped [BoundingBox].
extends AbstractData
class_name DataBoundingBox

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/bounding_box.gd")],
}

var value: BoundingBox:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = BoundingBox.new()
		return value

func _to_variant() -> Variant:
	return value
