import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_1/data/api/endpoint.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://restaurant-api.dicoding.dev';

  Future<Restaurants> getListRestaurants() async {
    try {
      final response =
          await http.get(Uri.parse("${_baseUrl}${Endpoints.restaurantList}"));
      if (response.statusCode == 200) {
        return Restaurants.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load top headlines');
      }
    } on SocketException catch (error) {
      throw Exception('No internet connection');
    } on TimeoutException catch (error) {
      throw Exception('Send timeout in connection with API server');
    } on Error catch (e) {
      print('Error: $e');
      throw Exception('Something went wrong ');
    }
  }
}
