import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/data/models/menu.dart';
import 'package:flutter_application_1/data/models/review.dart';
import 'package:flutter_application_1/data/responses/restaurant_detail_response.dart';
import 'package:google_fonts/google_fonts.dart';

class CardReview extends StatelessWidget {
  final CustomerReviewResponse reviews;
  const CardReview({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '"${reviews.review.toString()}"',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '- ${reviews.name}, ${reviews.date}',
                        style: TextStyle(
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
