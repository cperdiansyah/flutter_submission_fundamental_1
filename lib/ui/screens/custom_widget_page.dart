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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(fontSize: 21, fontWeight: FontWeight.w500, color: Colors.white),
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
            ],
          ),
          actions: <Widget>[
            Center(
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () => Get.to(() => RestaurantSearchScreen()),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: child ?? const SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
