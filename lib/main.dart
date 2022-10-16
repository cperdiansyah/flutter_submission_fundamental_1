import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/ui/screens/home_page.dart';
import 'package:flutter_application_1/ui/screens/list_restaurant.dart';
import 'package:flutter_application_1/ui/screens/detail_restaurant.dart';

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
        primarySwatch: Colors.red,
      ),
      initialRoute: homepage,
      routes: {
        homepage: (context) => const Homepage(),
        // restaurantListRoute: ((context) => const ListRestaurant()),
        restaurantDetailRoute: ((context) => DetailRestaurant(
              restaurant:
                  ModalRoute.of(context)?.settings.arguments as Restaurant,
            )),
      },
    );
  }
}
