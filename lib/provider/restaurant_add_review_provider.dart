part of 'provider.dart';

class RestaurantAddReviewProvider extends ChangeNotifier {
  final ApiService apiService;
  final String? restaurantId;
  String? name;
  String? reviews;
  bool? loading;

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

  TextEditingController _controller = TextEditingController();

  TextEditingController get controller => _controller;

  updateName(String value) {
    name = value;
    notifyListeners();
  }

  updateReviews(String value) {
    reviews = value;
    notifyListeners();
  }

  updateLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  printState() {
    print(name);
    print(reviews);
    print(restaurantId);
  }

  Future<dynamic> postAddReview(
      String restaurantId, String name, String reviews) async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      updateLoading(true);
      final resReviews =
          await apiService.postReviews(restaurantId, name, reviews);
      if (resReviews == null) {
        _state = ResultState.noData;
        updateLoading(false);
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.hasData;
        updateLoading(false);
        notifyListeners();
        return _restaurantsResult = resReviews;
      }
    } on SocketException {
      _state = ResultState.error;
      updateLoading(false);
      notifyListeners();
      return _message = 'Check your connection!';
    } catch (e) {
      updateLoading(false);
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error -> $e';
    }
  }
}
