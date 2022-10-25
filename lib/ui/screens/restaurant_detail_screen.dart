part of 'pages.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final String restaurantId = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RestaurantDetailProvider>(
      create: (_) => RestaurantDetailProvider(apiService: ApiService(), restaurantId: restaurantId),
      child: Scaffold(
        body: Consumer<RestaurantDetailProvider>(
          builder: (context, state, _) {
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
                      background: Stack(
                        children: [
                          Hero(
                            tag: restaurant.pictureId.toString(),
                            child: Image.network(
                              "${Endpoints.imageUrlMedium}" + "${restaurant.pictureId}",
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[Colors.black.withAlpha(0), Colors.black12, Colors.black45],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: RestaurantAppColors.MCD_SECONDARY,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              restaurant.rating.toString(),
                                              style: TextStyle(
                                                fontSize: 21,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Text(
                        restaurant.name.toString(),
                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 15.0),
                      ),
                      centerTitle: true,
                      titlePadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
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
                                  color: RestaurantAppColors.GREY_COLOR_1,
                                ),
                                SizedBox(width: 4),
                                Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(
                                    restaurant.address.toString(),
                                    style: TextStyle(color: RestaurantAppColors.GREY_COLOR_1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          ReadMoreText(
                            restaurant.description.toString(),
                            colorClickableText: RestaurantAppColors.MCD_PRIMARY,
                            trimMode: TrimMode.Line,
                            trimLines: 10,
                            trimCollapsedText: 'Show More',
                            trimExpandedText: 'Show less',
                            moreStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400, color: RestaurantAppColors.MCD_PRIMARY),
                            lessStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400, color: RestaurantAppColors.MCD_PRIMARY),
                          ),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Foods',
                        style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 16.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: restaurant.menus!.foods?.length,
                          itemBuilder: (context, index) {
                            var foods = restaurant.menus!.foods![index];
                            return CardMenu(menu: foods.name.toString());
                          },
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 24),
                          Text(
                            'Drinks',
                            style: TextStyle(
                              fontFamily: GoogleFonts.montserrat().fontFamily,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 16.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: restaurant.menus!.drinks?.length,
                          itemBuilder: (context, index) {
                            var drinks = restaurant.menus!.drinks![index];
                            return CardMenu(menu: drinks.name.toString());
                          },
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 30,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Reviews',
                            style: TextStyle(
                              fontFamily: GoogleFonts.montserrat().fontFamily,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => AddReview(
                                    restaurantId: restaurant.id.toString(),
                                  ),
                                ).then((value) => Provider.of<RestaurantDetailProvider>(context, listen: false)
                                    .fetchDetailRestaurant(restaurantId));
                              },
                              child: const Icon(
                                Icons.add_rounded,
                                color: RestaurantAppColors.MCD_SECONDARY,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: restaurant.customerReviews!.length,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            var review = restaurant.customerReviews![index];
                            return CardReview(reviews: review);
                          },
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
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
          },
        ),
      ),
    );
  }
}
