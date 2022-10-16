part of 'pages.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final String restaurantId = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RestaurantDetailProvider>(
        create: (_) => RestaurantDetailProvider(
            apiService: ApiService(), restaurantId: restaurantId),
        child: Scaffold(
          body:
              Consumer<RestaurantDetailProvider>(builder: (context, state, _) {
            if (state.state == ResultState.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.state == ResultState.hasData) {
              var restaurant = state.result.restaurant!;

              return CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    expandedHeight: 200,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Hero(
                        tag: restaurant.pictureId.toString(),
                        child: Image.network(
                          "${Endpoints.imageUrlMedium}" +
                              "${restaurant.pictureId}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        restaurant.name.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      centerTitle: true,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 16),
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.place,
                                  size: 16,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 4),
                                Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(restaurant.city.toString()),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          // Row(
                          //   children: <Widget>[
                          //     Image.asset(
                          //       icStar,
                          //       width: 22,
                          //     ),
                          //     SizedBox(width: 4),
                          //     Text(restaurant.rating.toString()),
                          //   ],
                          // ),
                          SizedBox(height: 16),
                          Text(
                            restaurant.description.toString(),
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 32),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Divider(
                                      height: 0,
                                      thickness: 0.5,
                                      color: Colors.green)),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(36),
                                  color: RestaurantAppColors.MCD_SECONDARY,
                                ),
                                child: Text('Makanan',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                  child: Divider(
                                      height: 0,
                                      thickness: 0.5,
                                      color: Colors.green)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SliverGrid.count(
                  //   crossAxisCount: 2,
                  //   children: restaurant.menu.foods
                  //       .map(
                  //         (food) => Container(
                  //           width: 50,
                  //           height: 100,
                  //           margin: EdgeInsets.all(16),
                  //           decoration: BoxDecoration(
                  //             image: DecorationImage(
                  //               image: AssetImage(icFood),
                  //               fit: BoxFit.contain,
                  //             ),
                  //           ),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.end,
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: <Widget>[
                  //               Text(
                  //                 food.name,
                  //                 style: TextStyle(fontWeight: FontWeight.w500),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       )
                  //       .toList(),
                  // ),

                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 24),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Divider(
                                      height: 0,
                                      thickness: 0.5,
                                      color: Colors.green)),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(36),
                                  color: RestaurantAppColors.MCD_SECONDARY,
                                ),
                                child: Text('Minuman',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                  child: Divider(
                                      height: 0,
                                      thickness: 0.5,
                                      color: Colors.green)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // SliverGrid.count(
                  //   crossAxisCount: 2,
                  //   children: restaurant.menu.drinks
                  //       .map(
                  //         (drink) => Container(
                  //           width: 50,
                  //           height: 100,
                  //           margin: EdgeInsets.all(16),
                  //           decoration: BoxDecoration(
                  //             image: DecorationImage(
                  //               image: AssetImage(icBeverage),
                  //               fit: BoxFit.fill,
                  //             ),
                  //           ),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.end,
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: <Widget>[
                  //               Text(
                  //                 drink.name,
                  //                 style: TextStyle(fontWeight: FontWeight.w500),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       )
                  //       .toList(),
                  // ),
                ],
              );
            } else if (state.state == ResultState.noData) {
              return Center(
                child: Text(state.message),
              );
            } else if (state.state == ResultState.error) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return Center(
                child: Text(''),
              );
            }
          }),
        ));
  }
}
