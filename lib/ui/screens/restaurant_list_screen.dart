part of 'pages.dart';

class RestaurantListScreen extends StatelessWidget {
  const RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RestaurantListProvider>(
      create: (_) => RestaurantListProvider(apiService: ApiService()),
      child: CustomWidgetPage(
        title: "Restaurants",
        subtitle: "Recommendation restaurants for you!",
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Consumer<RestaurantListProvider>(
            builder: (context, state, _) {
              if (state.state == ResultState.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.state == ResultState.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.result.restaurant.length,
                  itemBuilder: (context, index) {
                    var restaurant = state.result.restaurant[index];
                    return CardRestaurant(restaurant: restaurant);
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
          ),
        ),
      ),
    );
  }
}
