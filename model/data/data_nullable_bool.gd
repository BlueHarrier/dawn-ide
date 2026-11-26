## Wrapped nullable bool.
extends AbstractData
class_name DataNullableBool

const SCHEMA = {
	"value": ["value", true, [TYPE_BOOL, TYPE_NIL], [null, null]],
}

var value: Variant:
	set(p_value):
		value = p_value if p_value is bool else null

func _to_variant() -> Variant:
	return value
