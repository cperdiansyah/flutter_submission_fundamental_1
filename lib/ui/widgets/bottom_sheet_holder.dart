import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';

class BottomSheetHolder extends StatelessWidget {
  const BottomSheetHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: RestaurantAppColors.MCD_SECONDARY,
        ),
        height: 4.0,
        width: MediaQuery.of(context).size.width * 0.12,
      ),
    );
  }
}
