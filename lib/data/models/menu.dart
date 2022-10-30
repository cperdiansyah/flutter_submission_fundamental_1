// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/data/models/drink.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu.freezed.dart';
part 'menu.g.dart';

@freezed
class Menu with _$Menu {
  const factory Menu({
    @JsonKey(name: 'foods') required List<Drink> foods,
    @JsonKey(name: 'drinks') required List<Drink> drinks,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
