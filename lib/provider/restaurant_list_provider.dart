import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';

enum ResultState { loading, noData, hasData, error }

class RestaurantListProvider extends ChangeNotifier {
  final ApiService apiService;

  RestaurantListProvider({required this.apiService}) {
    _fetchAllRestaurantData();
  }

  late Restaurants _restaurants;
  late ResultState _state;
  String _message = '';

  String get message => _message;

  Restaurants get result => _restaurants;

  ResultState get state => _state;

  Future<dynamic> _fetchAllRestaurantData() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final restaurants = await apiService.getListRestaurants();

      if (restaurants.restaurant.isEmpty) {
        _state = ResultState.noData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.hasData;
        notifyListeners();
        return _restaurants = restaurants;
      }
    } on SocketException {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Periksa Koneksi Internet Anda!';
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error -> $e';
    }
  }
}
