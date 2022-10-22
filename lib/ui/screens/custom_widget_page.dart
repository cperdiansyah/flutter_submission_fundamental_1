part of 'pages.dart';

class CustomWidgetPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  CustomWidgetPage(
      {this.title = "Title",
      this.subtitle = "subtitle",
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  color: RestaurantAppColors.MCD_SECONDARY,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.poppins(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                subtitle,
                                style: GoogleFonts.poppins(
                                  color: RestaurantAppColors.GREY_COLOR_3,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                ),
                                softWrap: true,
                                maxLines: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.white),
                        onPressed: () => Get.to(
                          () =>
                              ChangeNotifierProvider<RestaurantSearchProvider>(
                            create: (_) => RestaurantSearchProvider(
                                apiService: ApiService()),
                            child: RestaurantSearchScreen(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 12,
                  width: double.infinity,
                  color: RestaurantAppColors.NAVIGATION_COLOR,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 12,
                ),
                Expanded(
                  child: child ?? SizedBox(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
