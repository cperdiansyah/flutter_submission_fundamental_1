import 'dart:convert';

import 'package:flutter_application_1/data/api/endpoint.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://restaurant-api.dicoding.dev';

  Future<Restaurant> getListRestaurants() async {
    final response =
        await http.get(Uri.parse("${_baseUrl}${Endpoints.restaurantList}"));
    if (response.statusCode == 200) {
      return Restaurant.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
