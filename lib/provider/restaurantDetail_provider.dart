// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/data/models/restaurant.dart';
import 'package:flutter_application_1/provider/restaurant_provider.dart';
import 'package:provider/provider.dart';

enum ResultState { loading, noData, hasData, error }

class RestaurantDetailProvider extends ChangeNotifier {
  final Restaurant restaurant;
  RestaurantDetailProvider({required this.restaurant})

  @override
  Widget build(BuildContext context) {
    RestaurantProvider provider;

    
    
  //   return ChangeNotifierProvider( create: (_){
  //     provider = RestaurantProvider(apiService: ApiService());
  //     return provider.apiService.getDetailRestaurant(restaurant.id);
  //   },
  //   child: Scaffold(body: Consumer<RestaurantProvider>(builder: (context, state, _) {
  //     if(state.state == ResultState.loading){
  //       return Center(child: CircularProgressIndicator(),);
  //     }
  //   },),),);
  // }
  return  ChangeNotifierProvider<RestaurantProvider>(
      create: (_) {
      provider = RestaurantProvider(apiService: ApiService());
      // return apiService.getDetailRestaurant(restaurant.id);
      return provider.apiService.getDetailRestaurant(restaurant.id);
    },
      child: Scaffold(),
    );
}
