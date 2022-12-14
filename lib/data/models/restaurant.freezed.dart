// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restaurants _$RestaurantsFromJson(Map<String, dynamic> json) {
  return _Restaurants.fromJson(json);
}

/// @nodoc
mixin _$Restaurants {
  @JsonKey(name: 'restaurants')
  List<Restaurant> get restaurant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantsCopyWith<Restaurants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsCopyWith<$Res> {
  factory $RestaurantsCopyWith(
          Restaurants value, $Res Function(Restaurants) then) =
      _$RestaurantsCopyWithImpl<$Res, Restaurants>;
  @useResult
  $Res call({@JsonKey(name: 'restaurants') List<Restaurant> restaurant});
}

/// @nodoc
class _$RestaurantsCopyWithImpl<$Res, $Val extends Restaurants>
    implements $RestaurantsCopyWith<$Res> {
  _$RestaurantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
  }) {
    return _then(_value.copyWith(
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantsCopyWith<$Res>
    implements $RestaurantsCopyWith<$Res> {
  factory _$$_RestaurantsCopyWith(
          _$_Restaurants value, $Res Function(_$_Restaurants) then) =
      __$$_RestaurantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'restaurants') List<Restaurant> restaurant});
}

/// @nodoc
class __$$_RestaurantsCopyWithImpl<$Res>
    extends _$RestaurantsCopyWithImpl<$Res, _$_Restaurants>
    implements _$$_RestaurantsCopyWith<$Res> {
  __$$_RestaurantsCopyWithImpl(
      _$_Restaurants _value, $Res Function(_$_Restaurants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
  }) {
    return _then(_$_Restaurants(
      restaurant: null == restaurant
          ? _value._restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurants implements _Restaurants {
  const _$_Restaurants(
      {@JsonKey(name: 'restaurants')
          required final List<Restaurant> restaurant})
      : _restaurant = restaurant;

  factory _$_Restaurants.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantsFromJson(json);

  final List<Restaurant> _restaurant;
  @override
  @JsonKey(name: 'restaurants')
  List<Restaurant> get restaurant {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurant);
  }

  @override
  String toString() {
    return 'Restaurants(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurants &&
            const DeepCollectionEquality()
                .equals(other._restaurant, _restaurant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_restaurant));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantsCopyWith<_$_Restaurants> get copyWith =>
      __$$_RestaurantsCopyWithImpl<_$_Restaurants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantsToJson(
      this,
    );
  }
}

abstract class _Restaurants implements Restaurants {
  const factory _Restaurants(
      {@JsonKey(name: 'restaurants')
          required final List<Restaurant> restaurant}) = _$_Restaurants;

  factory _Restaurants.fromJson(Map<String, dynamic> json) =
      _$_Restaurants.fromJson;

  @override
  @JsonKey(name: 'restaurants')
  List<Restaurant> get restaurant;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantsCopyWith<_$_Restaurants> get copyWith =>
      throw _privateConstructorUsedError;
}

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get pictureId => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'menus')
  Menu? get menus => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerReviews')
  CostumerReviews? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String pictureId,
      String city,
      double rating,
      @JsonKey(name: 'menus') Menu? menus,
      @JsonKey(name: 'customerReviews') CostumerReviews? reviews});

  $MenuCopyWith<$Res>? get menus;
  $CostumerReviewsCopyWith<$Res>? get reviews;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? pictureId = null,
    Object? city = null,
    Object? rating = null,
    Object? menus = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: null == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      menus: freezed == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as Menu?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as CostumerReviews?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuCopyWith<$Res>? get menus {
    if (_value.menus == null) {
      return null;
    }

    return $MenuCopyWith<$Res>(_value.menus!, (value) {
      return _then(_value.copyWith(menus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CostumerReviewsCopyWith<$Res>? get reviews {
    if (_value.reviews == null) {
      return null;
    }

    return $CostumerReviewsCopyWith<$Res>(_value.reviews!, (value) {
      return _then(_value.copyWith(reviews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$_RestaurantCopyWith(
          _$_Restaurant value, $Res Function(_$_Restaurant) then) =
      __$$_RestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String pictureId,
      String city,
      double rating,
      @JsonKey(name: 'menus') Menu? menus,
      @JsonKey(name: 'customerReviews') CostumerReviews? reviews});

  @override
  $MenuCopyWith<$Res>? get menus;
  @override
  $CostumerReviewsCopyWith<$Res>? get reviews;
}

/// @nodoc
class __$$_RestaurantCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$_Restaurant>
    implements _$$_RestaurantCopyWith<$Res> {
  __$$_RestaurantCopyWithImpl(
      _$_Restaurant _value, $Res Function(_$_Restaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? pictureId = null,
    Object? city = null,
    Object? rating = null,
    Object? menus = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_Restaurant(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: null == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      menus: freezed == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as Menu?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as CostumerReviews?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant implements _Restaurant {
  const _$_Restaurant(
      {required this.id,
      required this.name,
      required this.description,
      required this.pictureId,
      required this.city,
      required this.rating,
      @JsonKey(name: 'menus') this.menus,
      @JsonKey(name: 'customerReviews') this.reviews});

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String pictureId;
  @override
  final String city;
  @override
  final double rating;
  @override
  @JsonKey(name: 'menus')
  final Menu? menus;
  @override
  @JsonKey(name: 'customerReviews')
  final CostumerReviews? reviews;

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, description: $description, pictureId: $pictureId, city: $city, rating: $rating, menus: $menus, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pictureId, pictureId) ||
                other.pictureId == pictureId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.menus, menus) || other.menus == menus) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, pictureId,
      city, rating, menus, reviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      __$$_RestaurantCopyWithImpl<_$_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
          {required final String id,
          required final String name,
          required final String description,
          required final String pictureId,
          required final String city,
          required final double rating,
          @JsonKey(name: 'menus') final Menu? menus,
          @JsonKey(name: 'customerReviews') final CostumerReviews? reviews}) =
      _$_Restaurant;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get pictureId;
  @override
  String get city;
  @override
  double get rating;
  @override
  @JsonKey(name: 'menus')
  Menu? get menus;
  @override
  @JsonKey(name: 'customerReviews')
  CostumerReviews? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}
