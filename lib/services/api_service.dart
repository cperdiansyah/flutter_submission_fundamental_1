import 'dart:async';
import 'dart:convert';

import 'package:flutter_application_1/data/responses/restaurant_add_review_response.dart';
import 'package:flutter_application_1/data/responses/restaurant_detail_response.dart';
import 'package:flutter_application_1/data/responses/restaurant_list_response.dart';
import 'package:flutter_application_1/data/responses/restaurant_search_response.dart';
import 'package:flutter_application_1/services/endpoint.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiService {
  final Client client;

  static const String _baseUrl = 'https://restaurant-api.dicoding.dev';

  ApiService(this.client);

  Future<RestaurantListResponse> getListRestaurants() async {
    try {
      final response = await http.get(Uri.parse("${_baseUrl}${Endpoints.restaurantList}"));
      if (response.statusCode == 200) {
        return RestaurantListResponse.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load data');
      }
    } on Error catch (e) {
      print('Error: $e');
      throw Exception('Something went wrong ');
    }
  }

  Future<RestaurantDetailResponse> getDetailRestaurant(String id) async {
    try {
      final response = await http.get(Uri.parse("${_baseUrl}${Endpoints.restaurantDetail}${id}"));
      if (response.statusCode == 200) {
        return RestaurantDetailResponse.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load top headlines');
      }
    } on Error catch (e) {
      print('Error: $e');
      throw Exception('Something went wrong ');
    }
  }

  Future<RestaurantSearchResponse> searchRestaurant(String query) async {
    final response =
        await http.get(Uri.parse("${_baseUrl}${Endpoints.restaurantSearch}?q=${query}"));
    if (response.statusCode == 200) {
      return RestaurantSearchResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<RestaurantAddReviewResponse> postReviews(String id, String name, String review) async {
    final response = await http.post(
      Uri.parse("${_baseUrl}${Endpoints.review}"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        {
          'id': id,
          'name': name,
          'review': review,
        },
      ),
    );
    if (response.statusCode == 200) {
      return RestaurantAddReviewResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
}
