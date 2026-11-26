## Base class for all data wrappers.
@abstract
extends RefCounted
class_name AbstractData

const TYPE_KEY = "$type"
const TYPES = {
	"byte": preload("./data_byte.gd"),
	"byte?": preload("./data_nullable_byte.gd"),
	"ushort": preload("./data_ushort.gd"),
	"ushort?": preload("./data_nullable_ushort.gd"),
	"uint": preload("./data_uint.gd"),
	"uint?": preload("./data_nullable_uint.gd"),
	"ulong": preload("./data_ulong.gd"),
	"ulong?": preload("./data_nullable_ulong.gd"),
	"sbyte": preload("./data_sbyte.gd"),
	"sbyte?": preload("./data_nullable_sbyte.gd"),
	"short": preload("./data_short.gd"),
	"short?": preload("./data_nullable_short.gd"),
	"int": preload("./data_int.gd"),
	"int?": preload("./data_nullable_int.gd"),
	"long": preload("./data_long.gd"),
	"long?": preload("./data_nullable_long.gd"),
	"float": preload("./data_float.gd"),
	"float?": preload("./data_nullable_float.gd"),
	"double": preload("./data_double.gd"),
	"double?": preload("./data_nullable_double.gd"),
	"decimal": preload("./data_decimal.gd"),
	"decimal?": preload("./data_nullable_decimal.gd"),
	"bool": preload("./data_bool.gd"),
	"bool?": preload("./data_nullable_bool.gd"),
	"char": preload("./data_char.gd"),
	"char?": preload("./data_nullable_char.gd"),
	"string": preload("./data_string.gd"),
	"Uri": preload("./data_uri.gd"),
	"DateTime": preload("./data_date_time.gd"),
	"DateTime?": preload("./data_nullable_date_time.gd"),
	"TimeSpan": preload("./data_time_span.gd"),
	"TimeSpan?": preload("./data_nullable_time_span.gd"),
	"color": preload("./data_color.gd"),
	"color?": preload("./data_nullable_color.gd"),
	"colorX": preload("./data_color_x.gd"),
	"colorX?": preload("./data_nullable_color_x.gd"),
	"color32": preload("./data_color32.gd"),
	"color32?": preload("./data_nullable_color32.gd"),
	"Rect": preload("./data_rect.gd"),
	"Rect?": preload("./data_nullable_rect.gd"),
	"IntRect": preload("./data_int_rect.gd"),
	"IntRect?": preload("./data_nullable_int_rect.gd"),
	"BoundingBox": preload("./data_bounding_box.gd"),
	"BoundingBox?": preload("./data_nullable_bounding_box.gd"),
}

@abstract func _to_variant() -> Variant

## Returns the inner value as a [Variant].
func to_variant() -> Variant: return _to_variant()

## Gets the [Variant.Type] of the inner value.
func get_value_type() -> Variant.Type:
	return typeof(to_variant()) as Variant.Type
