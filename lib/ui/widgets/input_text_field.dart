// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextField extends StatelessWidget {

  final String hintText;
  final Function(String? value) onChanged;
  final TextEditingController? controller;
  
  const InputTextField({
    Key? key,
  
    required this.hintText,
    required this.onChanged, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 8),
        TextField(
          decoration: InputDecoration(
            fillColor: Color(0xFFF6F7FB),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: GoogleFonts.montserrat().fontFamily,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFFA4A4A4),
            ),
          ),
          onChanged: onChanged,
          controller: controller,
        ),
      ],
    );
  }
}
