import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class CostumerReviews with _$CostumerReviews {
  const factory CostumerReviews({
    required String name,
    required String review,
    required String date,
  }) = _CostumerReviews;

  factory CostumerReviews.fromJson(Map<String, dynamic> json) =>
      _$CostumerReviewsFromJson(json);
}
