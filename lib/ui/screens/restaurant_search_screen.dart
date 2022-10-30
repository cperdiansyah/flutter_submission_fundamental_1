part of 'pages.dart';

class RestaurantSearchScreen extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  RestaurantSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchRestaurantsState = Provider.of<RestaurantSearchProvider>(context);
    final preferencesState = Provider.of<PreferencesProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Search', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16),
                  Container(
                    height: 40,
                    child: TextFormField(
                      controller: _textEditingController,
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, color: preferencesState.isDarkTheme ? Colors.black : mcdSecondary),
                        fillColor: Color(0xFFF6F7FB),
                        hintText: "Looking for a place to eat ?",
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                      onChanged: (keyword) {
                        searchRestaurantsState.searchRestaurant(keyword);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: Container(
                child: Consumer<RestaurantSearchProvider>(builder: (context, state, _) {
                  if (state.state == ResultState.loading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state.state == ResultState.hasData) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.result.restaurants!.length,
                        itemBuilder: (context, index) {
                          var restaurant = state.result.restaurants![index];
                          return CardRestaurant(restaurant: restaurant);
                        });
                  } else if (state.state == ResultState.noData) {
                    return Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Lottie.asset(
                            'assets/lottie/not_found_lottie.json',
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    );
                  } else if (state.state == ResultState.error) {
                    return Column(
                      children: [Text(state.message)],
                    );
                  } else if (state.state == ResultState.initialLoad) {
                    return Column(
                      children: [
                        Text(
                          "Please search for restaurants by name or menu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            // color: Colors.black,
                          ),
                        )
                      ],
                    );
                  } else {
                    return Center(child: Text(''));
                  }
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
