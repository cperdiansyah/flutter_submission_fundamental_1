part of 'provider.dart';

class RestaurantAddReviewProvider extends ChangeNotifier {
  final ApiService apiService;
  final String? restaurantId;
  final String? name;
  final String? reviews;

  RestaurantAddReviewProvider(
      {required this.apiService, this.restaurantId, this.name, this.reviews});

  late RestaurantAddReviewResponse _restaurantsResult =
      [] as RestaurantAddReviewResponse;
  ResultState _state = ResultState.noData;
  String _message = '';

  // Restaurants get result => _restaurants;
  String get message => _message;
  RestaurantAddReviewResponse get result => _restaurantsResult;
  ResultState get state => _state;

  Future<dynamic> postAddReview(
      String restaurantId, String name, String reviews) async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final resReviews =
          await apiService.postReviews(restaurantId, name, reviews);
      if (resReviews == null) {
        _state = ResultState.noData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.hasData;
        notifyListeners();
        return _restaurantsResult = resReviews;
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
