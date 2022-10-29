part of 'database_local.dart';

class SharedPrefHelper {
  final Future<SharedPreferences> sharedPreferences;

  SharedPrefHelper({required this.sharedPreferences});

  static const DAILY_TRENDING = 'DAILY_TRENDING';

  Future<bool> get isDailyTrending async {
    final prefs = await sharedPreferences;
    return prefs.getBool(DAILY_TRENDING) ?? false;
  }

  void setDailyTrending(bool value) async {
    final prefs = await sharedPreferences;
    prefs.setBool(DAILY_TRENDING, value);
  }
}
