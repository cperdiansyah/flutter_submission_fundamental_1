import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/database_local/database_local.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/ui/helper/preferences_helper.dart';
import 'package:flutter_application_1/ui/screens/pages.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RestaurantListProvider>(
          create: (_) => RestaurantListProvider(
            apiService: ApiService(),
          ),
        ),
        ChangeNotifierProvider<RestaurantSearchProvider>(
          create: (_) => RestaurantSearchProvider(
            apiService: ApiService(),
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => PreferencesProvider(
            preferencesHelper: PreferencesHelper(
              sharedPreferences: SharedPreferences.getInstance(),
            ),
          ),
        ),
        ChangeNotifierProvider<DatabaseProvider>(
          create: (_) => DatabaseProvider(
            databaseHelper: DatabaseHelper(),
          ),
        ),
      ],
      child: Consumer<PreferencesProvider>(
        builder: (context, provider, child) {
          return GetMaterialApp(
            title: 'Restaurant App Submission',
            debugShowCheckedModeBanner: false,
            theme: provider.themeData,
            builder: (context, child) {
              return CupertinoTheme(
                data: CupertinoThemeData(
                  brightness: provider.isDarkTheme ? Brightness.dark : Brightness.light,
                ),
                child: Material(
                  child: child,
                ),
              );
            },
            initialRoute: homepage,
            routes: {homepage: (context) => const Homepage()},
          );
        },
      ),
    );
  }
}
