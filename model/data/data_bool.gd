## Wrapped bool.
extends AbstractData
class_name DataBool

const SCHEMA = {
	"value": ["value", true, TYPE_BOOL, null],
}

var value: bool

func _to_variant() -> Variant:
	return value
