import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/ui/widgets/bottom_sheet_holder.dart';
import 'package:flutter_application_1/ui/widgets/input_text_field.dart';
import 'package:flutter_application_1/ui/widgets/primary_button.dart';
import 'package:flutter_application_1/ui/widgets/text_field_area.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
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
      create: (_) =>
          RestaurantAddReviewProvider(apiService: ApiService(Client()), restaurantId: restaurantId),
      child: Consumer<RestaurantAddReviewProvider>(
        builder: (context, state, _) {
          final providerAddReview = Provider.of<RestaurantAddReviewProvider>(context);
          final preferencesState = Provider.of<PreferencesProvider>(context);

          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: preferencesState.isDarkTheme ? darkModeBackground : Colors.white,
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
                        color: preferencesState.isDarkTheme ? Colors.white : Colors.black,
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
                        if (state.restaurantId != null &&
                            state.name != null &&
                            state.reviews != null) {
                          return providerAddReview
                              .postAddReview(restaurantId)
                              .whenComplete(() => Navigator.pop(context));
                        } else {
                          Navigator.pop(context, true);
                        }
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
