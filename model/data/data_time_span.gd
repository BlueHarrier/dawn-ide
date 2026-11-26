## Wrapped TimeSpan.
## Godot does not have a TimeSpan class, but they can be serialized and deserialized
# from [String] using RegEx.
extends AbstractData
class_name DataTimeSpan

const _MINUTE_SECONDS = 60
const _HOUR_SECONDS = 60 * _MINUTE_SECONDS
const _DAY_SECONDS = 24 * _HOUR_SECONDS

const SCHEMA = {
	"value": ["value", true, TYPE_STRING, null],
}

static var _pattern := RegEx.create_from_string("^-?(?:(?:\\d+)\\.)?\\d{1,2}:[0-5]\\d:[0-5]\\d(?:\\.\\d{1,7})?$")

var value: String:
	set(p_value):
		var match := _pattern.search(p_value)
		if match:
			value = match.get_string()
		else:
			value = "00:00:00"

func _to_variant() -> Variant:
	return value

## Calculates the Unix time offset of the value. Decimals will be rounded.
func to_unix_time_offset() -> int:
	var val := value
	var negative := val.begins_with("-")
	val = val.trim_prefix("-")
	var offset: int = 0
	var day_splits := val.split(".", 2)
	if day_splits.size() > 1:
		offset += day_splits[0].to_int() * _DAY_SECONDS
		val = day_splits[1]
	var offset_splits := val.split(":")
	offset += offset_splits[0].to_int() * _HOUR_SECONDS
	offset += offset_splits[1].to_int() * _MINUTE_SECONDS
	offset += round(offset_splits[2].to_float())
	return offset if !negative else -offset

## Sets the value from a Unix time offset.
func set_unix_time_offset(offset: int) -> void:
	var negative := offset < 0
	offset = abs(offset)
	var days := offset / _DAY_SECONDS
	var hours := (offset % _DAY_SECONDS) / _HOUR_SECONDS
	var minutes := (offset % _HOUR_SECONDS) / _MINUTE_SECONDS
	var seconds := offset % _MINUTE_SECONDS
	value = "%s%s%02d:%02d:%02d" % [
		"-" if negative else "",
		"%d." % [days] if days > 0 else "",
		days,
		hours,
		minutes,
		seconds,
	]

## Adds a Unix time offset to the current value.
func add_unix_time_offset(offset: int) -> void:
	var current := to_unix_time_offset()
	set_unix_time_offset(current + offset)
