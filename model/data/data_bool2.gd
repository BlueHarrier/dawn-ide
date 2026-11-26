## Wrapped [Bool2].
extends AbstractData
class_name DataBool2

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/bool2.gd")],
}

var value: Bool2:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Bool2.new()
		return value

func _to_variant() -> Variant:
	return value
