import 'package:flutter_application_1/data/models/review.dart';

class RestaurantAddReviewResponse {
  bool? error;
  String? message;
  List<CostumerReviews>? cosumerReviews;

  RestaurantAddReviewResponse({this.error, this.message, this.cosumerReviews});

  RestaurantAddReviewResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    if (json['customerReviews'] != null) {
      cosumerReviews = <CostumerReviews>[];
      json['customerReviews'].forEach((v) {
        cosumerReviews!.add(CostumerReviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    if (cosumerReviews != null) {
      data['customerReviews'] = cosumerReviews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
