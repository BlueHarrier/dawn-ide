## Wrapped nullable double.
extends AbstractData
class_name DataNullableDouble

const SCHEMA = {
	"value": ["value", true, [TYPE_FLOAT, TYPE_NIL], [null, null]],
}

var value: Variant:
	set(p_value):
		value = p_value if p_value is float else null

func _to_variant() -> Variant:
	return value
