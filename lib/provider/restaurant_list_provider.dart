part of 'provider.dart';

enum ResultState { loading, noData, hasData, error, initialLoad}

class RestaurantListProvider extends ChangeNotifier {
  final ApiService apiService;

  RestaurantListProvider({required this.apiService}) {
    _fetchAllRestaurantData();
  }

  // late Restaurants _restaurants;
  late RestaurantListResponse _restaurantsResult;
  late ResultState _state;
  String _message = '';

  // Restaurants get result => _restaurants;
  String get message => _message;
  RestaurantListResponse get result => _restaurantsResult;
  ResultState get state => _state;

  Future<dynamic> _fetchAllRestaurantData() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final restaurant = await apiService.getListRestaurants();

      if (restaurant.restaurants!.isEmpty) {
        _state = ResultState.noData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.hasData;
        notifyListeners();
        return _restaurantsResult = restaurant;
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
