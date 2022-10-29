import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles.dart';
import 'package:flutter_application_1/data/database_local/database_local.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/data/models/review.dart';
import 'package:flutter_application_1/data/responses/restaurant_detail_response.dart';
import 'package:flutter_application_1/data/responses/restaurant_list_response.dart';
import 'package:flutter_application_1/data/responses/restaurant_search_response.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/ui/helper/preferences_helper.dart';

import '../data/responses/restaurant_add_review_response.dart';

part 'preferences_provider.dart';
part 'restaurant_add_review_provider.dart';
part 'restaurant_database_provider.dart';
part 'restaurant_detail_provider.dart';
part 'restaurant_list_provider.dart';
part 'restaurant_search_provider.dart';
