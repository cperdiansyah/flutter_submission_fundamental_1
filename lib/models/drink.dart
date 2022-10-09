import 'package:freezed_annotation/freezed_annotation.dart';
part 'drink.freezed.dart';
part 'drink.g.dart';

@freezed
class Drink with _$Drink {
  const factory Drink({
    required String name,
  }) = _Drink;

  factory Drink.fromJson(Map<String, dynamic> json) => _$DrinkFromJson(json);
}
