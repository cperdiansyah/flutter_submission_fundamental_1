import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_1/data/responses/restaurant_detail_response.dart';
import 'package:flutter_application_1/data/responses/restaurant_list_response.dart';
import 'package:flutter_application_1/services/endpoint.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://restaurant-api.dicoding.dev';

  Future<RestaurantListResponse> getListRestaurants() async {
    try {
      final response =
          await http.get(Uri.parse("${_baseUrl}${Endpoints.restaurantList}"));
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
      final response = await http
          .get(Uri.parse("${_baseUrl}${Endpoints.restaurantDetail}${id}"));
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
}
