// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return _Menu.fromJson(json);
}

/// @nodoc
mixin _$Menu {
  @JsonKey(name: 'foods')
  List<Drink> get foods => throw _privateConstructorUsedError;
  @JsonKey(name: 'drinks')
  List<Drink> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call(
      {@JsonKey(name: 'foods') List<Drink> foods,
      @JsonKey(name: 'drinks') List<Drink> drinks});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Drink>,
      drinks: null == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<Drink>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$_MenuCopyWith(_$_Menu value, $Res Function(_$_Menu) then) =
      __$$_MenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'foods') List<Drink> foods,
      @JsonKey(name: 'drinks') List<Drink> drinks});
}

/// @nodoc
class __$$_MenuCopyWithImpl<$Res> extends _$MenuCopyWithImpl<$Res, _$_Menu>
    implements _$$_MenuCopyWith<$Res> {
  __$$_MenuCopyWithImpl(_$_Menu _value, $Res Function(_$_Menu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_$_Menu(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Drink>,
      drinks: null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<Drink>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Menu implements _Menu {
  const _$_Menu(
      {@JsonKey(name: 'foods') required final List<Drink> foods,
      @JsonKey(name: 'drinks') required final List<Drink> drinks})
      : _foods = foods,
        _drinks = drinks;

  factory _$_Menu.fromJson(Map<String, dynamic> json) => _$$_MenuFromJson(json);

  final List<Drink> _foods;
  @override
  @JsonKey(name: 'foods')
  List<Drink> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Drink> _drinks;
  @override
  @JsonKey(name: 'drinks')
  List<Drink> get drinks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'Menu(foods: $foods, drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menu &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuCopyWith<_$_Menu> get copyWith =>
      __$$_MenuCopyWithImpl<_$_Menu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuToJson(
      this,
    );
  }
}

abstract class _Menu implements Menu {
  const factory _Menu(
      {@JsonKey(name: 'foods') required final List<Drink> foods,
      @JsonKey(name: 'drinks') required final List<Drink> drinks}) = _$_Menu;

  factory _Menu.fromJson(Map<String, dynamic> json) = _$_Menu.fromJson;

  @override
  @JsonKey(name: 'foods')
  List<Drink> get foods;
  @override
  @JsonKey(name: 'drinks')
  List<Drink> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$_MenuCopyWith<_$_Menu> get copyWith => throw _privateConstructorUsedError;
}
