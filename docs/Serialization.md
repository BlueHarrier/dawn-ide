# Serialization

## Json

The class `JSONSerializer` is responsible of the whole Json (de)serialization process. It uses the native class `JSON` to perform safe operations when parsing and stringifying Json, but converting the resulting `Variant` into objects is a bit trickier and requires a bit of setup.

Classes become serializable if they have a default constructor and a `SCHEMA` constant or variable which defines the shape of their corresponding Json object. The schema consists of a `Dictionary[String, Array]` in which the key is the internal object's attribute name, and the array is a collection of elements that help the classes above perform the (de)serialization. They must be in the present order:

1. `String` with the name of the Json attribute.
2. `bool` indicating whether the attribute is mandatory or not.
3. `Variant.Type` representing the internal Godot type of the attribute.
4. `Variant` with additional information that each type might need to (de)serialize. It must be present, so set it to `null` if no additional information is needed for a type.

An example of schema could be:
```gdscript
# Example from res://model/types/int_rect.gd

const _Float3: GDScript = preload("./float3.gd")

const SCHEMA = {
	"position": ["position", true, TYPE_OBJECT, _Float3],
	"size": ["size", true, TYPE_OBJECT, _Float3],
}
```

### Type data

As stated earlier, the 4th parameter in the attribute definition is the additional data that depends on the type. For all primitive types it should be defined as `null`, but for collections and objects this changes:

#### TYPE_ARRAY

It will be a an `Array` containing two elements:

1. `Variant.Type` of the internal type that the array must contain.
2. `Variant`, the additional data to deserialize said type, following the rules you're reading right now.

In case of it being `null`, it will be interpreted as `[TYPE_VARIANT, null]`.

#### TYPE_DICTIONARY

It can be an `Array` containing two elements:

1. `Variant.Type` of the internal type that the values must contain.
2. `Variant`, the additional data to deserialize said type, following the rules you're reading right now.

Or an inner schema `Dictionary`, identifying the final structure of the resulting `Dictionary`.

`null` is also accepted, it will be interpreted as `[TYPE_VARIANT, null]`.

#### TYPE_OBJECT

Will be deserialized from a `Dictionary`, and the additional data will be the instantiable `Script` of the serializable class that it will turn into.
