// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Drink _$DrinkFromJson(Map<String, dynamic> json) {
  return _Drink.fromJson(json);
}

/// @nodoc
mixin _$Drink {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinkCopyWith<Drink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkCopyWith<$Res> {
  factory $DrinkCopyWith(Drink value, $Res Function(Drink) then) =
      _$DrinkCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$DrinkCopyWithImpl<$Res> implements $DrinkCopyWith<$Res> {
  _$DrinkCopyWithImpl(this._value, this._then);

  final Drink _value;
  // ignore: unused_field
  final $Res Function(Drink) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DrinkCopyWith<$Res> implements $DrinkCopyWith<$Res> {
  factory _$$_DrinkCopyWith(_$_Drink value, $Res Function(_$_Drink) then) =
      __$$_DrinkCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_DrinkCopyWithImpl<$Res> extends _$DrinkCopyWithImpl<$Res>
    implements _$$_DrinkCopyWith<$Res> {
  __$$_DrinkCopyWithImpl(_$_Drink _value, $Res Function(_$_Drink) _then)
      : super(_value, (v) => _then(v as _$_Drink));

  @override
  _$_Drink get _value => super._value as _$_Drink;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Drink(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Drink implements _Drink {
  const _$_Drink({required this.name});

  factory _$_Drink.fromJson(Map<String, dynamic> json) =>
      _$$_DrinkFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Drink(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Drink &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DrinkCopyWith<_$_Drink> get copyWith =>
      __$$_DrinkCopyWithImpl<_$_Drink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrinkToJson(
      this,
    );
  }
}

abstract class _Drink implements Drink {
  const factory _Drink({required final String name}) = _$_Drink;

  factory _Drink.fromJson(Map<String, dynamic> json) = _$_Drink.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DrinkCopyWith<_$_Drink> get copyWith =>
      throw _privateConstructorUsedError;
}
