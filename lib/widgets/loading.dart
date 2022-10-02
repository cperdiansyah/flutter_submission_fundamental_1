import 'package:flutter/material.dart';
import 'package:flutter_application_1/resources/colors.dart';

class Loading extends StatelessWidget {
  const Loading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      backgroundColor: RestaurantAppColors.GREY_COLOR_1,
      valueColor:
          new AlwaysStoppedAnimation<Color>(RestaurantAppColors.MCD_PRIMARY),
    ));
  }
}
