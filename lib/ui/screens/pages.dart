import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/data/responses/restaurant_detail_response.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/services/endpoint.dart';
import 'package:flutter_application_1/ui/helper/modal_bottom_sheet_helper.dart';
import 'package:flutter_application_1/ui/widgets/add_review.dart';
import 'package:flutter_application_1/ui/widgets/card_menu.dart';
import 'package:flutter_application_1/ui/widgets/card_restaurant.dart';
import 'package:flutter_application_1/ui/widgets/card_review.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application_1/services/api_service.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

part 'custom_widget_page.dart';
part 'restaurant_list_screen.dart';
part 'restaurant_detail_screen.dart';
part 'restaurant_search_screen.dart';
