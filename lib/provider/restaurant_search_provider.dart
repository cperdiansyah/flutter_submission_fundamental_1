part of 'provider.dart';

class RestaurantSearchProvider extends ChangeNotifier {
  final ApiService apiService;

  RestaurantSearchProvider({required this.apiService});

  // late Restaurants _restaurants;
  late RestaurantSearchResponse _restaurantsResult =
      [] as RestaurantSearchResponse;
  ResultState _state = ResultState.initialLoad;
  String _message = '';

  // Restaurants get result => _restaurants;
  String get message => _message;
  RestaurantSearchResponse get result => _restaurantsResult;
  ResultState get state => _state;

  Future<dynamic> searchRestaurant(String query) async {
    if (query.length == 0) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Search field is required!';
    }
    try {
      _state = ResultState.loading;
      notifyListeners();
      final restaurants = await apiService.searchRestaurant(query);

      if (restaurants.restaurants!.isEmpty) {
        _state = ResultState.noData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.hasData;
        notifyListeners();
        return _restaurantsResult = restaurants;
      }
    } on SocketException {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Check your connection!';
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error -> $e';
    }
  }
}
