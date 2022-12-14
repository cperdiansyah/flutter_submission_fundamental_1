part of 'pages.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  final NotificationHelper _notificationHelper = NotificationHelper();

  @override
  void initState() {
    super.initState();
    _notificationHelper.configureSelectNotificationSubject(restaurantDetailRoute);
  }

  @override
  void dispose() {
    selectNotificationSubject.close();
    super.dispose();
  }

  final List<Widget> _children = [
    const RestaurantListScreen(),
    const FavoriteScreen(),
    const SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        // backgroundColor: Colors.white,
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: mcdSecondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
            // backgroundColor: mcdSecondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            // backgroundColor: mcdSecondary,
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
