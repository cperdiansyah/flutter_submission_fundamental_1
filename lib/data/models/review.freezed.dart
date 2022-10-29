// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostumerReviews _$CostumerReviewsFromJson(Map<String, dynamic> json) {
  return _CostumerReviews.fromJson(json);
}

/// @nodoc
mixin _$CostumerReviews {
  String get name => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostumerReviewsCopyWith<CostumerReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostumerReviewsCopyWith<$Res> {
  factory $CostumerReviewsCopyWith(
          CostumerReviews value, $Res Function(CostumerReviews) then) =
      _$CostumerReviewsCopyWithImpl<$Res, CostumerReviews>;
  @useResult
  $Res call({String name, String review, String date});
}

/// @nodoc
class _$CostumerReviewsCopyWithImpl<$Res, $Val extends CostumerReviews>
    implements $CostumerReviewsCopyWith<$Res> {
  _$CostumerReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? review = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostumerReviewsCopyWith<$Res>
    implements $CostumerReviewsCopyWith<$Res> {
  factory _$$_CostumerReviewsCopyWith(
          _$_CostumerReviews value, $Res Function(_$_CostumerReviews) then) =
      __$$_CostumerReviewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String review, String date});
}

/// @nodoc
class __$$_CostumerReviewsCopyWithImpl<$Res>
    extends _$CostumerReviewsCopyWithImpl<$Res, _$_CostumerReviews>
    implements _$$_CostumerReviewsCopyWith<$Res> {
  __$$_CostumerReviewsCopyWithImpl(
      _$_CostumerReviews _value, $Res Function(_$_CostumerReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? review = null,
    Object? date = null,
  }) {
    return _then(_$_CostumerReviews(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostumerReviews implements _CostumerReviews {
  const _$_CostumerReviews(
      {required this.name, required this.review, required this.date});

  factory _$_CostumerReviews.fromJson(Map<String, dynamic> json) =>
      _$$_CostumerReviewsFromJson(json);

  @override
  final String name;
  @override
  final String review;
  @override
  final String date;

  @override
  String toString() {
    return 'CostumerReviews(name: $name, review: $review, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostumerReviews &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, review, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostumerReviewsCopyWith<_$_CostumerReviews> get copyWith =>
      __$$_CostumerReviewsCopyWithImpl<_$_CostumerReviews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostumerReviewsToJson(
      this,
    );
  }
}

abstract class _CostumerReviews implements CostumerReviews {
  const factory _CostumerReviews(
      {required final String name,
      required final String review,
      required final String date}) = _$_CostumerReviews;

  factory _CostumerReviews.fromJson(Map<String, dynamic> json) =
      _$_CostumerReviews.fromJson;

  @override
  String get name;
  @override
  String get review;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_CostumerReviewsCopyWith<_$_CostumerReviews> get copyWith =>
      throw _privateConstructorUsedError;
}
