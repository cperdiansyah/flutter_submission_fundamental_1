import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/menu.dart';

class BadgeMenu extends StatelessWidget {
  final Menu menu;
  const BadgeMenu({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Material(child: Text(menu.toString()));
  }
}
