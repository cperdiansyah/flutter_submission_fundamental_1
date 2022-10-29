part of 'local.dart';

class DbProvider extends ChangeNotifier {
  final DatabaseHelper databaseHelper;

  DbProvider({required this.databaseHelper}) {
    getFavorite();
  }

  late ResultState _state;
  ResultState get state => _state;

  List<Restaurant> _list = [];
  List<Restaurant> get list => _list;

  void getFavorite() async {
    _list = await databaseHelper.getFavorite();
    if (_list.length > 0)
      _state = ResultState.hasData;
    else
      _state = ResultState.noData;

    notifyListeners();
  }

  void addFavorite(Restaurant restaurant) async {
    try {
      await databaseHelper.insertFavorite(restaurant);
      getFavorite();
    } catch (e) {
      _state = ResultState.error;
    }
  }

  Future<bool> isFavorite(String id) async {
    final favoriteResto = await databaseHelper.getFavoriteById(id);
    return favoriteResto.isNotEmpty;
  }

  void removeFavorite(String id) async {
    try {
      await databaseHelper.removeFavorite(id);
      getFavorite();
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
    }
  }
}
