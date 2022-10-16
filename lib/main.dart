import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/ui/screens/detail_restaurant.dart';
import 'package:flutter_application_1/ui/screens/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App Submission 1',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: RestaurantAppColors.MCD_SECONDARY,
              secondary: RestaurantAppColors.MCD_PRIMARY)),
      initialRoute: homepage,
      routes: {
        homepage: (context) => const RestaurantListScreen(),
        // restaurantListRoute: ((context) => const ListRestaurant()),
        restaurantDetailRoute: ((context) => DetailRestaurant(
              restaurant:
                  ModalRoute.of(context)?.settings.arguments as Restaurant,
            )),
      },
    );
  }
}
