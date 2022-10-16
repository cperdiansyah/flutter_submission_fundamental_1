import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/provider/restaurant_provider.dart';
import 'package:flutter_application_1/screens/card_restaurant.dart';
import 'package:flutter_application_1/widgets/platform_widget.dart';
import 'package:provider/provider.dart';

class ListRestaurant extends StatelessWidget {
  const ListRestaurant({Key? key}) : super(key: key);

  Widget _buildList() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      padding: const EdgeInsets.all(24),
                      color: RestaurantAppColors.MCD_SECONDARY,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            'Hola...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Already feeling hungry?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Flexible(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Find Restaurant',
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color:
                                                RestaurantAppColors.MCD_PRIMARY,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<RestaurantProvider>(
                builder: (context, state, _) {
                  if (state.state == ResultState.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.state == ResultState.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.result.restaurant.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var article = state.result.restaurant[index];
                        return CardRestaurant(restaurant: article);
                      },
                    );
                  } else if (state.state == ResultState.noData) {
                    return Center(
                      child: Material(
                        child: Text(state.message),
                      ),
                    );
                  } else if (state.state == ResultState.error) {
                    return Center(
                      child: Material(
                        child: Text(state.message),
                      ),
                    );
                  } else {
                    return const Center(
                      child: Material(
                        child: Text(''),
                      ),
                    );
                  }
                },
              )

              // FutureBuilder(
              //   future: _restaurant,
              //   builder: (context, AsyncSnapshot<Restaurants> snapshot) {
              //     var state = snapshot.connectionState;

              //     if (state != ConnectionState.done) {
              //       return const Center(child: LoadingView());
              //     } else {
              //       if (snapshot.hasData) {
              //         return ListView.builder(
              //           shrinkWrap: true,
              //           physics: const NeverScrollableScrollPhysics(),
              //           itemCount: snapshot.data?.restaurant.length,
              //           itemBuilder: (context, index) {
              //             var restaurant = snapshot.data?.restaurant[index];
              //             return CardRestaurant(restaurant: restaurant!);
              //           },
              //         );
              //       } else if (snapshot.hasError) {
              //         return Center(
              //           child: Material(
              //             child: Text(snapshot.error.toString()),
              //           ),
              //         );
              //       } else {
              //         return const Material(child: Text(''));
              //       }
              //     }
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      body: _buildList(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        transitionBetweenRoutes: false,
      ),
      child: _buildList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
