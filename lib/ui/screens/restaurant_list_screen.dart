part of 'pages.dart';

class RestaurantListScreen extends StatelessWidget {
  const RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RestaurantListProvider>(
      create: (_) => RestaurantListProvider(apiService: ApiService()),
      child: CustomWidgetPage(
        title: "Makan.in",
        subtitle: "Find A Good Place, Start Your Good Taste",
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Consumer<RestaurantListProvider>(
            builder: (context, state, _) {
              if (state.state == ResultState.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.state == ResultState.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.result.restaurants!.length,
                  itemBuilder: (context, index) {
                    var restaurant = state.result.restaurants![index];
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
                return Column(
                  children: [Text(state.message)],
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
