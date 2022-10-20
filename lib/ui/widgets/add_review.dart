import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/ui/widgets/bottom_sheet_holder.dart';
import 'package:flutter_application_1/ui/widgets/input_text_field.dart';
import 'package:flutter_application_1/ui/widgets/primary_button.dart';
import 'package:flutter_application_1/ui/widgets/text_field_area.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddReview extends StatelessWidget {
  final String restaurantId;
  const AddReview({
    Key? key,
    required this.restaurantId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RestaurantAddReviewProvider>(
      create: (_) => RestaurantAddReviewProvider(
          apiService: ApiService(), restaurantId: restaurantId),
      child: Consumer<RestaurantAddReviewProvider>(
        builder: (context, state, _) {
          final providerAddReview =
              Provider.of<RestaurantAddReviewProvider>(context);

          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BottomSheetHolder(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Add Review',
                      style: TextStyle(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(
                      hintText: 'Input your name here...',
                      // controller: providerAddReview.controller,
                      onChanged: ((value) {
                        providerAddReview.updateName(value!);
                      }),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldArea(
                      hintText: 'Input your Reviews here...',
                      // controller: providerAddReview.controller,
                      onChanged: ((value) {
                        providerAddReview.updateReviews(value!);
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomPrimaryButton(
                      textValue: 'Submit Review',
                      isLoading: state.loading,
                      onPressed: () {
                        providerAddReview.printState();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
