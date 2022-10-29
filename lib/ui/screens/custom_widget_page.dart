part of 'pages.dart';

class CustomWidgetPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  CustomWidgetPage(
      {this.title = "Title", this.subtitle = "subtitle", this.onBackButtonPressed, this.child, this.backColor});

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
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  color: mcdSecondary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style:
                                  GoogleFonts.poppins(fontSize: 21, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                            Text(
                              subtitle,
                              style: GoogleFonts.poppins(
                                color: greyColor3,
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                              ),
                              softWrap: true,
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 12,
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.white),
                        onPressed: () => Get.to(() => RestaurantSearchScreen()),
                      )
                    ],
                  ),
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
