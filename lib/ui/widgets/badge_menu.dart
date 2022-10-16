import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/data/models/menu.dart';

class BadgeMenu extends StatelessWidget {
  final String menu;

  const BadgeMenu({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: RestaurantAppColors.MCD_SECONDARY,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            menu,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
