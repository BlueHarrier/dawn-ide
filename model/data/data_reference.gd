## Wrapped reference.
extends AbstractData
class_name DataReference

const SCHEMA = {
	"target_id": ["targetID", true, TYPE_STRING, null],
}

var target_id: String

func _to_variant() -> Variant:
	return target_id

