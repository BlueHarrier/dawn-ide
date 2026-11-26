## Wrapped [Bool4].
extends AbstractData
class_name DataBool4

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/bool4.gd")],
}

var value: Bool4:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Bool4.new()
		return value

func _to_variant() -> Variant:
	return value
