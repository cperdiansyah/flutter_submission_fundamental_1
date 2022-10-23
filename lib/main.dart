import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/ui/screens/pages.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RestaurantDetailProvider>(
      create: (_) => RestaurantDetailProvider(
          apiService: ApiService(), restaurantId: null),
      child: GetMaterialApp(
        title: 'Restaurant App Submission 1',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: RestaurantAppColors.MCD_SECONDARY,
                secondary: RestaurantAppColors.MCD_PRIMARY)),
        initialRoute: homepage,
        routes: {
          homepage: (context) => const RestaurantListScreen(),
          // restaurantListRoute: ((context) => const ListRestaurant()),
        },
      ),
    );
  }
}
