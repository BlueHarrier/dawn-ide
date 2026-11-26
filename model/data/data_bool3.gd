## Wrapped [Bool3].
extends AbstractData
class_name DataBool3

const SCHEMA = {
	"value": ["value", true, TYPE_OBJECT, preload("res://model/types/bool3.gd")],
}

var value: Bool3:
	set(p_value):
		if p_value:
			value = p_value
	get:
		if !value:
			value = Bool3.new()
		return value

func _to_variant() -> Variant:
	return value
