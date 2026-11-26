## Wrapped string.
extends AbstractData
class_name DataString

const SCHEMA = {
	"value": ["value", true, TYPE_STRING, null],
}

var value: String

func _to_variant() -> Variant:
	return value
