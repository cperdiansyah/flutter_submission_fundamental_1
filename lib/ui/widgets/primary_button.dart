import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPrimaryButton extends StatelessWidget {
  final Color buttonColor;
  final String textValue;
  final Color textColor;
  final Function() onPressed;
  final bool? isLoading;

  const CustomPrimaryButton(
      {super.key,
      this.buttonColor = mcdSecondary,
      this.textValue = '',
      this.textColor = Colors.white,
      required this.onPressed,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(14),
      elevation: 0,
      child: Container(
        height: 56,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            minimumSize: const Size.fromHeight(50),
          ),
          onPressed: onPressed,
          child: Text(
            textValue,
            style: TextStyle(
                fontFamily: GoogleFonts.montserrat().fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor),
          ),
        ),
      ),
    );
  }
}
