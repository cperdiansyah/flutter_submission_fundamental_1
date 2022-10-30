import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  final String menu;

  const CardMenu({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[400],
      shadowColor : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            menu,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
